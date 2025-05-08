import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:shared_preferences/shared_preferences.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentQuestionIndex = 0;
  List<int?> _selectedAnswers = List.filled(questions.length, null);

  void _nextQuestion() {
    if (_currentQuestionIndex < questions.length - 1) {
      setState(() {
        _currentQuestionIndex++;
      });
    } else {
      _goToScoreScreen();
    }
  }

  void _prevQuestion() {
    if (_currentQuestionIndex > 0) {
      setState(() {
        _currentQuestionIndex--;
      });
    }
  }

  void _selectAnswer(int index) {
    setState(() {
      _selectedAnswers[_currentQuestionIndex] = index;
    });
  }

  Future<void> _goToScoreScreen() async {
    int score = 0;
    for (int i = 0; i < questions.length; i++) {
      if (_selectedAnswers[i] == questions[i].correctAnswerIndex) {
        score++;
      }
    }

    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('score', score);

    Navigator.pushNamed(context, '/score');
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[_currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text('Question ${_currentQuestionIndex + 1}/${questions.length}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question.questionText,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ...List.generate(question.options.length, (index) {
              final isSelected = _selectedAnswers[_currentQuestionIndex] == index;
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 6),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isSelected ? Colors.deepPurple : null,
                    foregroundColor: isSelected ? Colors.white : null,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                  onPressed: () => _selectAnswer(index),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(question.options[index]),
                  ),
                ),
              );
            }),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: _currentQuestionIndex == 0 ? null : _prevQuestion,
                  child: const Text('Previous'),
                ),
                ElevatedButton(
                  onPressed: _selectedAnswers[_currentQuestionIndex] == null ? null : _nextQuestion,
                  child: Text(_currentQuestionIndex == questions.length - 1 ? 'Finish' : 'Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

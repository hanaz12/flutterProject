import 'package:flutter/material.dart';
import 'package:quiz_app/screens/home_screen.dart';
import 'package:quiz_app/screens/quiz_screen.dart';
import 'package:quiz_app/screens/score_screen.dart';
import 'package:quiz_app/screens/theme.dart';
import 'package:quiz_app/screens/countdown_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);

  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: MyApp.themeNotifier,
      builder: (_, currentMode, __) {
        return MaterialApp(
          title: 'Quiz App',
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: currentMode,
          initialRoute: '/',
          routes: {
            '/': (context) => const HomeScreen(),
            '/quiz': (context) => const QuizScreen(),
            '/score': (context) => const ScoreScreen(),
            '/countdown': (context) => const CountdownScreen(),
          },
        );
      },
    );
  }
}

void toggleTheme() {
  MyApp.themeNotifier.value =
      MyApp.themeNotifier.value == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
}
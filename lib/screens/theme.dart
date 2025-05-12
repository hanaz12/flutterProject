// // import 'package:flutter/material.dart';

// // final ThemeData lightTheme = ThemeData(
// //   brightness: Brightness.light,
// //   scaffoldBackgroundColor: Colors.white,
// //   primaryColor: Colors.deepPurple,
// //   appBarTheme: const AppBarTheme(
// //     backgroundColor: Colors.white,
// //     foregroundColor: Colors.deepPurple,
// //     elevation: 0,
// //   ),
// //   textTheme: const TextTheme(
// //     bodyLarge: TextStyle(color: Colors.deepPurple),
// //     bodyMedium: TextStyle(color: Colors.deepPurple),
// //   ),
// //   colorScheme: const ColorScheme.light(
// //     primary: Colors.deepPurple,
// //     onPrimary: Colors.white,
// //   ),
// // );

// // final ThemeData darkTheme = ThemeData(
// //   brightness: Brightness.dark,
// //   scaffoldBackgroundColor: Colors.deepPurple,
// //   primaryColor: Colors.white,
// //   appBarTheme: const AppBarTheme(
// //     backgroundColor: Colors.deepPurple,
// //     foregroundColor: Colors.white,
// //     elevation: 0,
// //   ),
// //   textTheme: const TextTheme(
// //     bodyLarge: TextStyle(color: Colors.white),
// //     bodyMedium: TextStyle(color: Colors.white),
// //   ),
// //   colorScheme: const ColorScheme.dark(
// //     primary: Colors.white,
// //     onPrimary: Colors.deepPurple,
// //   ),
// // );
// import 'package:flutter/material.dart';

// final ThemeData lightTheme = ThemeData(
//   brightness: Brightness.light,
//   scaffoldBackgroundColor: Colors.white,
//   primaryColor: Colors.deepPurple,
//   appBarTheme: const AppBarTheme(
//     backgroundColor: Colors.white,
//     foregroundColor: Colors.deepPurple,
//     elevation: 0,
//   ),
//   textTheme: const TextTheme(
//     bodyLarge: TextStyle(color: Colors.deepPurple),
//     bodyMedium: TextStyle(color: Colors.deepPurple),
//   ),
//   colorScheme: const ColorScheme.light(
//     primary: Colors.deepPurple,
//     onPrimary: Colors.white,
//   ),
//   elevatedButtonTheme: ElevatedButtonThemeData(
//     style: ElevatedButton.styleFrom(
//       backgroundColor: Colors.deepPurple,
//       foregroundColor: Colors.white,
//     ),
//   ),
// );

// final ThemeData darkTheme = ThemeData(
//   brightness: Brightness.dark,
//   scaffoldBackgroundColor: Colors.deepPurple,
//   primaryColor: Colors.white,
//   appBarTheme: const AppBarTheme(
//     backgroundColor: Colors.deepPurple,
//     foregroundColor: Colors.white,
//     elevation: 0,
//   ),
//   textTheme: const TextTheme(
//     bodyLarge: TextStyle(color: Colors.white),
//     bodyMedium: TextStyle(color: Colors.white),
//   ),
//   colorScheme: const ColorScheme.dark(
//     primary: Colors.white,
//     onPrimary: Colors.deepPurple,
//   ),
//   elevatedButtonTheme: ElevatedButtonThemeData(
//     style: ElevatedButton.styleFrom(
//       backgroundColor: Colors.white,
//       foregroundColor: Colors.deepPurple,
//     ),
//   ),
// );
import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  primaryColor: Colors.purple[300]!, // استخدمنا ! عشان نأكد إن القيمة مش null
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: const Color.fromARGB(255, 186, 104, 200)!,
    elevation: 0,
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Colors.purple[300]!),
    bodyMedium: TextStyle(color: Colors.purple[300]!),
  ),
  colorScheme: ColorScheme.light(
    primary: Colors.purple[300]!,
    onPrimary: Colors.white,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.purple[300]!,
      foregroundColor: Colors.white,
    ),
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black,
  primaryColor: Colors.purple[300]!, // استخدمنا ! هنا كمان
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.black,
    foregroundColor: Colors.purple[300]!,
    elevation: 0,
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Colors.purple[300]!),
    bodyMedium: TextStyle(color: Colors.purple[300]!),
  ),
  colorScheme: ColorScheme.dark(
    primary: Colors.purple[300]!,
    onPrimary: Colors.black,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.purple[300]!,
      foregroundColor: Colors.black,
    ),
  ),
);
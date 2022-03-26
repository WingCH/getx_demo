import 'package:flutter/material.dart';

// ref: https://github.com/JideGuru/FlutterEbookApp/blob/master/lib/theme/theme_config.dart
class CustomTheme {
  static Color lightPrimary = Colors.white;
  static Color lightAccent = const Color(0xff2ca8e2);
  static Color lightBG = Colors.white;
  static Color lightFG = Colors.black;

  static Color darkPrimary = const Color(0xff1f1f1f);
  static Color darkAccent = const Color(0xff2ca8e2);
  static Color darkBG = const Color(0xff121212);
  static Color darkFG = Colors.white;

  static ThemeData lightTheme = ThemeData(
      colorScheme: ColorScheme.fromSwatch().copyWith(
        brightness: Brightness.light,
        primary: lightPrimary,
        secondary: lightAccent,
        background: lightBG,
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: lightAccent,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: lightPrimary,
        foregroundColor: lightFG,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: lightFG,
        ),
      ));

  static ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSwatch().copyWith(
      brightness: Brightness.dark,
      primary: darkPrimary,
      secondary: darkAccent,
      background: darkBG,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: darkAccent,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: darkPrimary,
      foregroundColor: darkFG,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: darkFG,
      ),
    ),
  );
}

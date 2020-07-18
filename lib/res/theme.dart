import 'package:flutter/material.dart';

class AppTheme {
  ThemeData light = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(
      color: Color(0xFF607D8B),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF607D8B),
    ),
  );

  ThemeData dark = ThemeData.dark().copyWith(
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
    ),
  );
}

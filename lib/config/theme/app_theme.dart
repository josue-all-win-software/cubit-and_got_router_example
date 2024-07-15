import 'package:flutter/material.dart';

abstract class AppTheme {

  static ThemeData getTheme({
    Color? colorSchemeSeed,
    bool? isDarkMode
  }) {
    return ThemeData(
      colorSchemeSeed: colorSchemeSeed,
      brightness: isDarkMode == true ? Brightness.dark : Brightness.light
    );
  }
}
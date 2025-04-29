import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF1E90FF); // Blue
  static const Color backgroundColor = Color(0xFFF5F6FA);
  static const Color textColor = Color(0xFF1E1E1E);
  static const Color subtitleColor = Colors.grey;
  static const Color cardColor = Colors.white;

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: backgroundColor,
    primaryColor: primaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: backgroundColor,
      elevation: 0,
      iconTheme: IconThemeData(color: textColor),
      titleTextStyle: TextStyle(
        color: textColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: subtitleColor,
      ),
      bodyLarge: TextStyle(
        fontSize: 14,
        color: textColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 12,
        color: subtitleColor,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      ),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: Colors.grey.shade200,
      selectedColor: primaryColor,
      disabledColor: Colors.grey.shade300,
      labelStyle: const TextStyle(color: textColor),
      secondaryLabelStyle: const TextStyle(color: Colors.white),
      brightness: Brightness.light,
    ),
    cardColor: cardColor,
    iconTheme: const IconThemeData(color: subtitleColor),
  );
}

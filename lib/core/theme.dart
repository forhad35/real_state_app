import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor =Color( 0xFF0A8ED9);
  static const LinearGradient btnBgColor=
  LinearGradient(
    begin: Alignment(0.0, -0.2293), // -22.93% from top
    end: Alignment(0.0, 1.3141),    // 131.41% from top
    colors: [
      Color(0xFFA0DAFB),
      Color(0xFF0A8ED9),
    ],
  );

  static const Color lightBackgroundColor = Color(0xFFF5F6FA);
  static const Color darkBackgroundColor = Color(0xFF121212);
  static const Color lightTextColor = Color(0xFF1E1E1E);
  static const Color darkTextColor = Color(0xFFE0E0E0);
  static const Color subtitleColor = Colors.grey;
  static const Color lightCardColor = Colors.white;
  static const Color darkCardColor = Color(0xFF1E1E1E);
  static const Color smallTextColor = Color(0xFF858585);
  static const Color smallTextColor1 = Color(0xFFD4D4D4);

  static const Color titleTextColor = Colors.black;

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: lightBackgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: lightBackgroundColor,
      elevation: 0,
      iconTheme: IconThemeData(color: lightTextColor),
      titleTextStyle: TextStyle(
        color: lightTextColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: lightTextColor),
      titleMedium: TextStyle(fontSize: 16, color: subtitleColor),
      bodyLarge: TextStyle(fontSize: 14, color: lightTextColor),
      bodyMedium: TextStyle(fontSize: 12, color: subtitleColor),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      ),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: Colors.grey.shade200,
      selectedColor: primaryColor,
      disabledColor: Colors.grey.shade300,
      labelStyle: const TextStyle(color: lightTextColor),
      secondaryLabelStyle: const TextStyle(color: Colors.white),
      brightness: Brightness.light,
    ),
    cardColor: lightCardColor,
    iconTheme: const IconThemeData(color: subtitleColor),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: darkBackgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: darkBackgroundColor,
      elevation: 0,
      iconTheme: IconThemeData(color: darkTextColor),
      titleTextStyle: TextStyle(
        color: darkTextColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: darkTextColor),
      titleMedium: TextStyle(fontSize: 16, color: Colors.grey),
      bodyLarge: TextStyle(fontSize: 14, color: darkTextColor),
      bodyMedium: TextStyle(fontSize: 12, color: Colors.grey),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      ),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: Colors.grey.shade800,
      selectedColor: primaryColor,
      disabledColor: Colors.grey.shade700,
      labelStyle: const TextStyle(color: darkTextColor),
      secondaryLabelStyle: const TextStyle(color: Colors.white),
      brightness: Brightness.dark,
    ),
    cardColor: darkCardColor,
    iconTheme: const IconThemeData(color: Colors.grey),
  );
}

import 'package:flutter/material.dart';

/// A utility class for app colors. Should not be instantiated.
class AppColors {
  AppColors._();
  //? Primary Colors
  static const Color mainBlue = Color(0xFF003AFC); // Main primary color
  static const Color blue = Color(0xFF6589FF); // Secondary blue
  static const Color lightBlue = Color(0xFFF7F6FF); // Background light blue
  static const Color darkBlue = Color(0xFF272727); // Dark blue for text

  //? Gray Scale
  static const Color gray = Color(0xFF898989); // Neutral gray for text
  static const Color darkGray =
      Color(0xFFBEBEBE); // Neutral gray lighter for hint text
  static const Color lightGray =
      Color(0xFFD0D0D0); // Light gray for borders/backgrounds
  static const Color extraLightGray =
      Color(0xFFE6E6E6); // Extra light background

  //? Black Scale
  static const Color lighterBlack =
      Color(0xFF121212); // For dark mode backgrounds

  static const Color red = Color(0xFFFF4C5E);
  static const Color lightGreen = Color(0xFF22C55E);

  //? Text Colors
  static const Color textPrimary = darkBlue; // Primary text color
  static const Color textSecondary = gray; // Secondary text color
  static const Color textInverse = Colors.white; // Text on dark backgrounds

  //? Background Colors
  static const Color backgroundPrimary =
      extraLightGray; // Primary light background
  static const Color backgroundSecondary = lightBlue; // Secondary background
  static const Color fillColor = Color(0xFFE6E6E6);
  //? Border Colors
  static const Color borderGray = lightGray; // Light gray for borders

  //? Button Colors
  static const Color buttonPrimary = mainBlue; // Primary button color
  static const Color buttonSecondary = blue; // Secondary button color
}

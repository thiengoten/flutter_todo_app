import 'package:flutter/material.dart';

class AppTheme {
  // Define the colors
  static const Color primaryColor = Color(0xFF6200EE);
  static const Color primaryVariantColor = Color(0xFF3700B3);
  static const Color secondaryColor = Color(0xFF03DAC6);
  static const Color secondaryVariantColor = Color(0xFF018786);
  static const Color backgroundColor = Color(0xFFFFFFFF);
  static const Color surfaceColor = Color(0xFFFFFFFF);
  static const Color errorColor = Color(0xFFB00020);
  static const Color onPrimaryColor = Color(0xFFFFFFFF);
  static const Color onSecondaryColor = Color(0xFF000000);
  static const Color onBackgroundColor = Color(0xFF000000);
  static const Color onSurfaceColor = Color(0xFF000000);
  static const Color onErrorColor = Color(0xFFFFFFFF);

  // Define text styles
  static const TextStyle headline1 =
      TextStyle(fontSize: 96.0, fontWeight: FontWeight.bold);
  static const TextStyle headline2 =
      TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold);
  static const TextStyle headline3 =
      TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold);
  static const TextStyle headline4 =
      TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold);
  static const TextStyle headline5 =
      TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold);
  static const TextStyle headline6 =
      TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  static const TextStyle subtitle1 =
      TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold);
  static const TextStyle subtitle2 =
      TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold);
  static const TextStyle bodyText1 =
      TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal);
  static const TextStyle bodyText2 =
      TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal);
  static const TextStyle button =
      TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold);
  static const TextStyle caption =
      TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal);
  static const TextStyle overline =
      TextStyle(fontSize: 10.0, fontWeight: FontWeight.normal);

  // Define the theme
  static ThemeData themeData = ThemeData(
    useMaterial3: true,
    primaryColor: primaryColor,
    secondaryHeaderColor: secondaryColor,
    scaffoldBackgroundColor: backgroundColor,
    colorScheme: const ColorScheme(
      primary: primaryColor,
      secondary: secondaryColor,
      surface: surfaceColor,
      error: errorColor,
      onPrimary: onPrimaryColor,
      onSecondary: onSecondaryColor,
      onSurface: onSurfaceColor,
      onError: onErrorColor,
      brightness: Brightness.light,
    ),
    textTheme: const TextTheme(
      headlineLarge: headline1,
      headlineMedium: headline2,
      headlineSmall: headline3,
      titleLarge: headline4,
      titleMedium: headline5,
      titleSmall: headline6,
      bodyLarge: bodyText1,
      bodyMedium: bodyText2,
      labelLarge: button,
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:mysite/core/color/colors.dart';
import 'package:flutter/scheduler.dart';

class AppTheme {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return isDarkTheme ? ThemeColors.lightTheme : ThemeColors.darkTheme;
  }
}

class ThemeColors {
  const ThemeColors._();
  static final lightTheme = ThemeData(
      brightness: Brightness.light,
      fontFamily: 'Poppins',
      primaryColor: primaryColor,
      scaffoldBackgroundColor: lightBackgroundColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: AppBarTheme(
        backgroundColor: lightBackgroundColor,
      ),
          textTheme: TextTheme(labelLarge: TextStyle(color: lightTextColor)), colorScheme: ColorScheme(
    brightness: Brightness.light, // or Brightness.dark
    primary: Color(0xFF6200EA),
    onPrimary: Color(0xFFFFFFFF),
    secondary: Color(0xFF03DAC6),
    onSecondary: Color(0xFF000000),
    error: Color(0xFFB00020),
    onError: Color(0xFFFFFFFF),
    background: Color(0xFFFFFFFF),
    onBackground: Color(0xFF000000),
    surface: Color(0xFFFFFFFF),
    onSurface: Color(0xFF000000),
  )
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Poppins',
    primaryColor: primaryColor,
    scaffoldBackgroundColor: const Color(0xFF00040F),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
      labelLarge: TextStyle(color: darkTextColor),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: darkBackgroundColor,
    ), colorScheme: ColorScheme(
    brightness: Brightness.dark, // or Brightness.dark
    primary: Color(0xFF6200EA),
    onPrimary: Color(0xFFFFFFFF),
    secondary: Color(0xFF03DAC6),
    onSecondary: Color(0xFF000000),
    error: Color(0xFFB00020),
    onError: Color(0xFFFFFFFF),
    background: Color(0xFFFFFFFF),
    onBackground: Color(0xFF000000),
    surface: Color(0xFFFFFFFF),
    onSurface: Color(0xFFFFFFFF), // For Text Change Color
  ),
  );
  static Brightness get currentSystemBrightness =>
      SchedulerBinding.instance.window.platformBrightness;
}

extension ThemeExtras on ThemeData {
  Color get navBarColor => brightness == Brightness.light
      ? const Color(0xffF0F0F0)
      : const Color(0xFF00040F);
  //
  Color get textColor => brightness == Brightness.light
      ? const Color(0xFF403930)
      : const Color(0xFFFFF8F2);
  //
  Color get secondaryColor => const Color(0xFFFE53BB);
  //
  Gradient get serviceCard =>
      brightness == Brightness.light ? grayWhite : grayBack;

  //
  Gradient get contactCard =>
      brightness == Brightness.light ? grayWhite : contactGradi;
}

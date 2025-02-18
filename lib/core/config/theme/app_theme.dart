import 'package:flutter/material.dart';
import 'package:watch_me/core/config/theme/app_colors.dart';

import 'app_typography.dart';

class AppTheme {
  static const String light = 'light';
  static const String dark = 'dark';
  static const String system = 'system';

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    hintColor: AppColors.accent,
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      secondary: Colors.blueAccent,
      surface: AppColors.surface,
      error: AppColors.error,
      onPrimary: AppColors.onPrimary,
      onSecondary: AppColors.onSecondary,
      onError: AppColors.onError,
      onSurface: AppColors.onSurface,
    ),
    scaffoldBackgroundColor: AppColors.background,
    textTheme: AppTypography.typeTypograph,
    fontFamily: AppTypography.fontFamily,
    appBarTheme: AppBarTheme(
      color: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.background,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: Colors.grey,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    hintColor: AppColors.accent,
    colorScheme: ColorScheme.dark(
      primary: AppColors.primary,
      secondary: Colors.blueAccent,
      surface: AppColors.surface,
      error: AppColors.error,
      onPrimary: AppColors.onPrimary,
      onSecondary: AppColors.onSecondary,
      onError: AppColors.onError,
      onSurface: AppColors.onSurface,
    ),
    scaffoldBackgroundColor: AppColors.backgroundDark,
    textTheme: AppTypography.typeTypograph,
    appBarTheme: AppBarTheme(
      color: AppColors.backgroundDark,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.backgroundDark,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: Colors.grey,
    ),
  );

}
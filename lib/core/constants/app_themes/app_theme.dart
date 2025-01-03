import 'package:ezycourse/core/constants/app_themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  //Light Theme data for the app
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.primaryColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryColor,
      elevation: 0,
      titleTextStyle: const TextStyle(
        color: AppColors.textColor,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    ),
  );

  //Dark Theme data for the app
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.primaryColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryColor,
      elevation: 0,
      titleTextStyle: const TextStyle(
        color: AppColors.textColor,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}

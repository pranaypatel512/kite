import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      primary: AppColors.azure,
      onPrimary: Colors.white,
      background: AppColors.frenchGray,
      onBackground: AppColors.gunmetal,
      surface: Colors.white,
      onSurface: AppColors.gunmetal,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.azure,
      foregroundColor: Colors.white,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
      elevation: 0, // Modern look, no shadow
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.frenchGray,
      selectedItemColor: AppColors.azure,
      unselectedItemColor: AppColors.gunmetal,
    ),
    tabBarTheme: TabBarTheme(
      labelColor: AppColors.azure,
      unselectedLabelColor: AppColors.gunmetal,
      indicator: BoxDecoration(
        color: AppColors.azure.withOpacity(0.2),
        borderRadius: BorderRadius.circular(5),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.azure),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.azure),
        borderRadius: BorderRadius.circular(8),
      ),
      labelStyle: TextStyle(color: AppColors.gunmetal),
      hintStyle: TextStyle(color: AppColors.gunmetal),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: AppColors.azure,
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(color: AppColors.gunmetal),
      bodyText2: TextStyle(color: AppColors.gunmetal),
    ),
    cardColor: Colors.white,
    iconTheme: IconThemeData(color: AppColors.azure),
  );

  static final ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.dark(
      primary: AppColors.azure,
      onPrimary: Colors.white,
      background: AppColors.richBlack,
      onBackground: AppColors.frenchGray,
      surface: AppColors.gunmetal,
      onSurface: AppColors.frenchGray,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.gunmetal2,
      foregroundColor: Colors.white,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
      elevation: 0, // Modern look, no shadow
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.gunmetal3,
      selectedItemColor: AppColors.azure,
      unselectedItemColor: AppColors.frenchGray,
    ),
    tabBarTheme: TabBarTheme(
      labelColor: AppColors.azure,
      unselectedLabelColor: AppColors.frenchGray,
      indicator: BoxDecoration(
        color: AppColors.azure.withOpacity(0.2),
        borderRadius: BorderRadius.circular(5),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.gunmetal2,
      border: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.azure),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.azure),
        borderRadius: BorderRadius.circular(8),
      ),
      labelStyle: TextStyle(color: AppColors.frenchGray),
      hintStyle: TextStyle(color: AppColors.frenchGray),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: AppColors.azure,
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(color: AppColors.frenchGray),
      bodyText2: TextStyle(color: AppColors.frenchGray),
    ),
    cardColor: AppColors.gunmetal,
    iconTheme: IconThemeData(color: AppColors.azure),
  );
}
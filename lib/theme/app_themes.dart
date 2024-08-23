import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
      colorScheme: const ColorScheme.light(
        primary: AppColors.azure,
        onPrimary: Colors.white,
        background: AppColors.white,
        onBackground: AppColors.gunmetal,
        surface: Colors.white,
        onSurface: AppColors.gunmetal,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.white,
        foregroundColor: Colors.white,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
        elevation: 0, // Modern look, no shadow
        iconTheme: IconThemeData(color: AppColors.richBlack)
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
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
          borderSide: const BorderSide(color: AppColors.azure),
          borderRadius: BorderRadius.circular(2),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.azure),
          borderRadius: BorderRadius.circular(4),
        ),
        labelStyle: const TextStyle(color: AppColors.gunmetal),
        hintStyle: const TextStyle(color: AppColors.gunmetal),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 48), // Full-width button
          primary: AppColors.azure,
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0))),
          side: MaterialStateProperty.all(const BorderSide(
            color: AppColors.azure,
          )),
        ),
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(color: AppColors.gunmetal),
        bodyText2: TextStyle(color: AppColors.gunmetal),
      ),
      cardColor: Colors.white,
      iconTheme: const IconThemeData(color: AppColors.azure),
      listTileTheme: ListTileThemeData(
          iconColor:  AppColors.richBlack),
      dividerTheme:
          const DividerThemeData(color: AppColors.cadetGray, thickness: 0.3));

  static final ThemeData darkTheme = ThemeData(
      colorScheme: const ColorScheme.dark(
        primary: AppColors.azure,
        onPrimary: Colors.white,
        background: AppColors.richBlack,
        onBackground: AppColors.frenchGray,
        surface: AppColors.gunmetal,
        onSurface: AppColors.frenchGray,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.richBlack,
        foregroundColor: Colors.white,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
        elevation: 0, // Modern look, no shadow
          iconTheme: IconThemeData(color: AppColors.white)
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
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
          borderSide: const BorderSide(color: AppColors.azure),
          borderRadius: BorderRadius.circular(2),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.azure),
          borderRadius: BorderRadius.circular(4),
        ),
        labelStyle: const TextStyle(color: AppColors.frenchGray),
        hintStyle: const TextStyle(color: AppColors.frenchGray),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 48), // Full-width button
          primary: AppColors.azure,
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0))),
          side: MaterialStateProperty.all(const BorderSide(
            color: AppColors.azure,
          )),
          padding: MaterialStateProperty.all(
              EdgeInsets.only(left: 12, top: 8, right: 12, bottom: 8)),
        ),
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(color: AppColors.frenchGray),
        bodyText2: TextStyle(color: AppColors.frenchGray),
      ),
      cardColor: AppColors.gunmetal,
      iconTheme: const IconThemeData(color: AppColors.azure),
      listTileTheme: ListTileThemeData(
          iconColor:  AppColors.frenchGray),
      dividerTheme:
          const DividerThemeData(color: AppColors.cadetGray, thickness: 0.3));
}

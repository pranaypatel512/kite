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
          elevation: 0,
          // Modern look, no shadow
          iconTheme: IconThemeData(color: AppColors.richBlack)),
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
        hintStyle:const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.gunmetal),
        labelStyle:const TextStyle(
            fontSize: 18, fontWeight: FontWeight.w500, color: AppColors.gunmetal),
            prefixStyle: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.gunmetal),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 48),
          // Full-width button
          foregroundColor: AppColors.azure,
          disabledForegroundColor: Colors.white,
          textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: AppColors.white),
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
        displayLarge: TextStyle(
            fontSize: 57, fontWeight: FontWeight.bold, color: Colors.black),
        displayMedium: TextStyle(
            fontSize: 45, fontWeight: FontWeight.bold, color: Colors.black),
        displaySmall: TextStyle(
            fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black),
        headlineLarge: TextStyle(
            fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
        headlineMedium: TextStyle(
            fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
        headlineSmall: TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
        titleLarge: TextStyle(
            fontSize: 22, fontWeight: FontWeight.w500, color: Colors.black),
        titleMedium: TextStyle(
            fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
        titleSmall: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
        bodyLarge: TextStyle(
            fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black87),
        bodyMedium: TextStyle(
            fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black87),
        bodySmall: TextStyle(
            fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black87),
        labelLarge: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
        labelMedium: TextStyle(
            fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
        labelSmall: TextStyle(
            fontSize: 11, fontWeight: FontWeight.w500, color: Colors.black),
      ),
      cardColor: Colors.white,
      iconTheme: const IconThemeData(color: AppColors.azure),
      listTileTheme: const ListTileThemeData(iconColor: AppColors.richBlack),
      dividerTheme:
          const DividerThemeData(color: AppColors.frenchGray, thickness: 0.1),
          
          );

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
          elevation: 0,
          // Modern look, no shadow
          iconTheme: IconThemeData(color: AppColors.white)),
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
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: AppColors.richBlack,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.gunmetal3,width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.gunmetal3,width: 2.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.gunmetal3,width: 2.0),
        ),
        hintStyle:TextStyle(
            fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.frenchGray),
        labelStyle:TextStyle(
            fontSize: 18, fontWeight: FontWeight.w400, color: AppColors.frenchGray),
            prefixStyle: TextStyle(
            fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.frenchGray),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
          // Full-width button
          primary: AppColors.azure,
          onPrimary: AppColors.white,
          textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          // Full-width button
          primary: AppColors.azure,
          textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.azureLight),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        )
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0))),
          side: MaterialStateProperty.all(const BorderSide(
            color: AppColors.azure,
            width: 2
          )),
          padding: MaterialStateProperty.all(
              const EdgeInsets.only(left: 12, top: 8, right: 12, bottom: 8)),
        ),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
            fontSize: 57, fontWeight: FontWeight.bold, color: Colors.white),
        displayMedium: TextStyle(
            fontSize: 45, fontWeight: FontWeight.bold, color: Colors.white),
        displaySmall: TextStyle(
            fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white),
        headlineLarge: TextStyle(
            fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
        headlineMedium: TextStyle(
            fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
        headlineSmall: TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        titleLarge: TextStyle(
            fontSize: 22, fontWeight: FontWeight.w400, color: Colors.white),
        titleMedium: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
        titleSmall: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
        bodyLarge: TextStyle(
            fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white70),
        bodyMedium: TextStyle(
            fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white70),
        bodySmall: TextStyle(
            fontSize: 12, fontWeight: FontWeight.normal, color: Colors.white70),
        labelLarge: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
        labelMedium: TextStyle(
            fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white),
        labelSmall: TextStyle(
            fontSize: 11, fontWeight: FontWeight.w500, color: Colors.white),
      ),
      cardColor: AppColors.gunmetal,
      iconTheme: const IconThemeData(color: AppColors.azure),
      listTileTheme: const ListTileThemeData(iconColor: AppColors.frenchGray),
      dividerTheme:
          const DividerThemeData(color: AppColors.frenchGray, thickness: 0.1));
}

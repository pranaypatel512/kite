import 'package:flutter/material.dart';
import 'package:kite/splash_screen.dart';
import 'package:kite/theme/app_themes.dart';

import 'auth/login_screen.dart';
import 'auth/signup_screen.dart';
import 'dashboard/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kite',
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.system, // Can be set to ThemeMode.dark or ThemeMode.light as needed
      home: SplashScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
      },
    );
  }
}


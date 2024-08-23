import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kite/start_screen.dart';
import 'package:kite/theme/app_colors.dart';
import 'dart:async';

import 'auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => StartUpScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.richBlack,
      body: Expanded(
        child: SizedBox.expand(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/kite_logo.svg",
                  semanticsLabel: "Zerodha",
                  colorFilter: const ColorFilter.mode(AppColors.logoColor, BlendMode.srcIn),
                  height: 30,
                  width: 30,
                ),
                Text(
                  'Kite',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kite/theme/app_colors.dart';


class StartUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0,right: 12.0),
              child: OutlinedButton(
              onPressed: () {
                // Handle demo action
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Text(
                  "Try demo",
                  textAlign: TextAlign.center,
                ),
              SizedBox(width: 8),
                  Icon(Icons.arrow_forward)
                    ],
                  ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 22.0,right: 22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            SvgPicture.asset(
                "assets/kite_logo.svg",
                semanticsLabel: "Zerodha",
              colorFilter: const ColorFilter.mode(AppColors.logoColor, BlendMode.srcIn),
              height: 30,
              width: 30,
            ),
            const SizedBox(height: 26),
            Text(
              'Welcome to\nKite by Zerodha',
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 32),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: const Padding(
                padding: EdgeInsets.only(top:12.0,bottom: 12.0),
                child:  ListTile(
                  contentPadding: EdgeInsets.only(top: 2.0,bottom: 2.0),
                  title: Text("Open New Account"),
              trailing: Icon(Icons.perm_identity_outlined, color: AppColors.frenchGray),
            ),
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
              child: const ListTile(
                title: Text("Login to Kite"),
                contentPadding: EdgeInsets.only(top: 2.0,bottom: 2.0),
                trailing: Icon(Icons.login_outlined, color: AppColors.frenchGray),
              ),
            ),
            const SizedBox(height: 32),
            const Text(
              'It is demo app...Start trading on Kite with a hassle-free account setup and enjoy '
              'the seamless experience of the Zerodha platform.',
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
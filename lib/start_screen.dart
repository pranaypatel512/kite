import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kite/theme/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';


class StartUpScreen extends StatelessWidget {
  // Play Store URL
  final Uri playStoreUrl = Uri.parse('https://play.google.com/store/apps/details?id=com.zerodha.kite3&hl=en_IN');

  // Function to launch URL
  Future<void> _launchURL(Uri url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
              height: 36,
              width: 36,
            ),
            const SizedBox(height: 26),
            Text(
              'Welcome to\nKite by Zerodha',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 52),
            const Divider(height: 0.1),
            const SizedBox(height: 4),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: ListTile(
                contentPadding: const EdgeInsets.only(top: 2.0,bottom: 2.0),
                title: Text("Open New Account",style: Theme.of(context).textTheme.titleMedium,),
                            trailing: const Icon(Icons.perm_identity_outlined),
                          ),
            ),
            const SizedBox(height: 4),
            const Divider(height: 0.1),
            const SizedBox(height: 4),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
              child:  ListTile(
                title: Text("Login to Kite",style: Theme.of(context).textTheme.titleMedium,),
                contentPadding: const EdgeInsets.only(top: 2.0,bottom: 2.0),
                trailing: const Icon(Icons.login_outlined),
              ),
            ),
            const SizedBox(height: 4),
            const Divider(height: 0.1),
            const SizedBox(height: 42),
            /*const Text(
              'It is demo app...Start trading on Kite with a hassle-free account setup and enjoy '
              'the seamless experience of the Zerodha platform.',
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.start,
            ),*/
          RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.bodySmall,
            children: [
              const TextSpan(text: 'It is demo app...Start trading on'),
              TextSpan(
                text: ' Kite ',
                style: const TextStyle(
                  color: Colors.blue,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    _launchURL(playStoreUrl);
                  },
              ),
              const TextSpan(text: 'with a hassle-free account setup and enjoy the seamless experience of the Zerodha platform.'),
            ],
          ),
        ),
          ],
        ),
      ),
    );
  }
}
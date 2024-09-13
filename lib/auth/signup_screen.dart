import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:kite/auth/verify_otp.dart';

import '../theme/app_colors.dart';

class SignupScreen extends StatelessWidget {
    final _userPhoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context); // Navigate back to StartUpScreen
          },
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              "assets/kite_logo.svg",
              semanticsLabel: "Zerodha",
              colorFilter:
                  const ColorFilter.mode(AppColors.logoColor, BlendMode.srcIn),
              height: 22,
              width: 22,
            ),
            onPressed: () {
              // Handle info action
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Text(
                  'Open your account',
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(height: 16),
                Center(
                  child: SvgPicture.asset(
                    'assets/phone_verification.svg',
                    // Replace with your SVG image path
                    height: 200,
                  ),
                ),
                const SizedBox(height: 32),
                
                 TextField(
                controller: _userPhoneController,
                decoration:  InputDecoration(
                  labelText: 'Phone number',
                  border: const OutlineInputBorder(),
                prefix: Row(
              mainAxisSize: MainAxisSize.min, // Ensures the prefix takes minimal space
              children: [
                Padding(padding: const EdgeInsets.only(left: 4.0), // Padding for better alignment
                child: Text(
                  '+91', // Country Code
                  style: Theme.of(context).inputDecorationTheme.labelStyle,
                )),
                const SizedBox(width: 8), // Space between country code and pipe
                Container(
                  width: 1, // Width of the pipe
                  color: AppColors.cadetGray, // Pipe color
                  // Match height of the TextField
                  constraints: const BoxConstraints(
                    maxHeight: 24, // Match TextField height
                  ),
                ),
                const SizedBox(width: 8), // Space between the pipe and input text
              ],
            ),
                ),
              ),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => VerifyOtp()),
                    );
                  },
                  child: const Text('Continue'),
                ),
                const SizedBox(height: 16),
                Center(
                  child: Text.rich(
                    TextSpan(
                      text: 'By continuing, you agree to the ',
                      children: [
                        TextSpan(
                          text: 'terms and conditions',
                          style: const TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Redirect to terms and conditions page
                            },
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Open a new account in just a few minutes and start trading '
                  'on India\'s leading stock brokerage platform.',
                  style: TextStyle(fontSize: 14),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

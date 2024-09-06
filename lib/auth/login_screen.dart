import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kite/auth/signup_screen.dart';
import 'package:kite/extension/extensions.dart';

import '../widgets/common_app_bar.dart';
import 'otp_screen.dart';

class LoginScreen extends StatelessWidget {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: const CommonAppBar(
        title: 'Login',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 16.0,left: 20,right: 20,bottom: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Text(
                'Login',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 58),
              TextField(
                controller: _usernameController,
                decoration:  InputDecoration(
                  labelText: 'Phone or User ID',
                  border: OutlineInputBorder(),
                  suffixIcon: const AssetVectorIcon(path: "assets/user_icon.svg",height: 14,width: 14)
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                    suffixIcon: const AssetVectorIcon(path: "assets/user_icon.svg",height: 14,width: 14)
                ),
              ),
              const SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: () {
                  // Navigate to OTP Screen
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => OTPScreen()),
                  );
                },
                child: Text('Login'.toUpperCase()),
              ),
              const SizedBox(height: 12.0),
              Align(alignment: Alignment.centerRight,child:
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => SignupScreen()));
                },
                child: const Text('Forgot User ID or password?'),
              ),),
              const SizedBox(height: 42.0),
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
                          context.launchURL(playStoreUrl);
                        },
                    ),
                    const TextSpan(
                        text:
                            'with a hassle-free account setup and enjoy the seamless experience of the Zerodha platform.'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

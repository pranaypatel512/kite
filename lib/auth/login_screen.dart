import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kite/auth/signup_screen.dart';
import 'package:kite/auth/verify_otp.dart';
import 'package:kite/extension/extensions.dart';

import '../widgets/common_app_bar.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isObscure = true;  // Initial state for password visibility

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: const CommonAppBar(
        title: 'Login',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 16.0, left: 20, right: 20, bottom: 16),
          child: Form(
            key: _formKey,
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
                TextFormField(
                  controller: _usernameController,
                  decoration:  InputDecoration(
                    labelText: 'Phone or User ID',
                    border: OutlineInputBorder(),
                    suffixIcon: UnconstrainedBox(
                      child: AssetVectorIcon(
                        path: "assets/user_icon.svg",
                        height: 22,
                        width: 22,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your user ID';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  controller: _passwordController,
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: 
                        _isObscure ? UnconstrainedBox(
                          child: AssetVectorIcon(
                          path: "assets/visibility_off.svg",
                          height: 22,
                          width: 22,
                                                ),
                        ) :UnconstrainedBox(
                          child: AssetVectorIcon(
                          path: "assets/visibility.svg",
                          height: 22,
                          width: 22,
                                                ),
                        ),
                      
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 32.0),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      // Proceed to OTP Screen if the form is valid
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => VerifyOtp()),
                      );
                    }
                  },
                  child: Text('Login'.toUpperCase()),
                ),
                const SizedBox(height: 12.0),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => SignupScreen()));
                    },
                    child: const Text('Forgot User ID or password?'),
                  ),
                ),
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
      ),
    );
  }
}

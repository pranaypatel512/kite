import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kite/dashboard/home_screen.dart';
import 'package:kite/extension/extensions.dart';
import 'package:kite/widgets/common_app_bar.dart';


class SetUpFingerPrint extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: CommonAppBar(title: 'Logout'),
      body: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(22.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
                  Center(
                    child: SvgPicture.asset(
                                  "assets/twofa_illustration.svg",
                                  semanticsLabel: "2FA",            
                                ),
                  ),
                              const SizedBox(height: 16),
            const SizedBox(height: 36),
             Text(
                    'Enable 2FA security',
                    style: Theme.of(context).textTheme.headline5,
                  ),
              const SizedBox(height: 22.0),
              RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodySmall,
                      children: [
                        const TextSpan(text: 'Enable biometric device lock on the app for 2Factor security. This is mandatory as per new exchange regulations.'),
                        TextSpan(
                          text: ' Learn more. ',
                          style: const TextStyle(
                            color: Colors.blue,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context.launchURL(playStoreUrl);
                            },
                        ),],
                    ),
                  ),
                
              SizedBox(height: 22.0),
              SizedBox(
                width: 140,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to Home Screen
                    Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (_) => HomeScreen()),
                          (Route<dynamic> route) => false, // Remove all previous routes
                        );
                  },
                  child: Text('Enable Now'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

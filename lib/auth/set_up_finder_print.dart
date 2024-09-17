import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kite/dashboard/home_screen.dart';
import 'package:kite/extension/extensions.dart';
import 'package:kite/widgets/common_app_bar.dart';
import 'package:local_auth/local_auth.dart';


class SetUpFingerPrint extends StatefulWidget {

  @override
  State<SetUpFingerPrint> createState() => _SetUpFingerPrintState();
}

class _SetUpFingerPrintState extends State<SetUpFingerPrint> {
   final LocalAuthentication auth = LocalAuthentication();

  bool _canCheckBiometrics = false;
  bool _isAuthenticated = false;
   @override
  void initState() {
    super.initState();
    _checkBiometrics();
  }

  // Check if the device supports biometrics
  Future<void> _checkBiometrics() async {
    bool canCheckBiometrics;
    try {
      canCheckBiometrics = await auth.canCheckBiometrics;
    } catch (e) {
      canCheckBiometrics = false;
    }

    setState(() {
      _canCheckBiometrics = canCheckBiometrics;
    });
  }

  // Perform authentication using phone lock or biometrics
  Future<void> _authenticate() async {
    bool authenticated = false;
    try {
      authenticated = await auth.authenticate(
        localizedReason: 'Please authenticate to access',
        options: const AuthenticationOptions(
          useErrorDialogs: true,
          stickyAuth: true,
          biometricOnly: false,  // Allow device authentication (PIN, pattern, etc.)
        ),
      );
      if(authenticated){
        // Navigate to Home Screen
                    Navigator.pushAndRemoveUntil(context,
                          MaterialPageRoute(builder: (_) => HomeScreen()),
                          (Route<dynamic> route) => false, // Remove all previous routes
                        );
      }
      
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }

  }
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
                    _authenticate();
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

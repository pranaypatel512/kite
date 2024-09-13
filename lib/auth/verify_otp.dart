import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:kite/dashboard/home_screen.dart';
import 'package:kite/widgets/common_app_bar.dart';
import 'package:kite/widgets/resend_otp_widget.dart';

import '../theme/app_colors.dart';

class VerifyOtp extends StatelessWidget {
    final _userPhoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text('Logout'),
        
        titleSpacing: 0,
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 16),
                SvgPicture.asset(
                              "assets/user.svg",
                              semanticsLabel: "User",            
                            ),
                            const SizedBox(height: 16),

                Text(
                  'Pranaykumar A Patel',
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(height: 12),
                Text(
                  'ZZ1121',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 22),
                
                 TextField(
                controller: _userPhoneController,
                decoration:   InputDecoration(
                  labelText: 'Enter SMS/Email OTP',
                  border: OutlineInputBorder(),
                  suffixIcon: GestureDetector(
                    onTap: ()=> Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => HomeScreen()),
                    ),
                    child: UnconstrainedBox(
                        child: AssetVectorIcon(
                          path: "assets/arrow_right_circle.svg",
                          height: 22,
                          width: 22,
                          tintColor: AppColors.azure,
                        ),
                      ),
                  ),
               ),
              ),
                const SizedBox(height: 32),
                OTPResendButton(onResend: (){

                },countdownTime: 60),
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

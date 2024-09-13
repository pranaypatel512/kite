import 'dart:async';
import 'package:flutter/material.dart';
import 'package:kite/theme/app_colors.dart';

class OTPResendButton extends StatefulWidget {
  final Function onResend; // Callback function for resend action
  final int countdownTime; // Customizable countdown duration

  OTPResendButton({required this.onResend, this.countdownTime = 30});

  @override
  _OTPResendButtonState createState() => _OTPResendButtonState();
}

class _OTPResendButtonState extends State<OTPResendButton> {
  late Timer _timer;
  late int _start;
  bool _isButtonDisabled = true;

  @override
  void initState() {
    super.initState();
    _start = widget.countdownTime;
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_start > 0) {
          _start--;
        } else {
          _isButtonDisabled = false;
          timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void handleResend() {
    setState(() {
      _start = widget.countdownTime;
      _isButtonDisabled = true;
      startTimer();
    });
    widget.onResend(); // Call the passed callback function when resend is clicked
  }

  @override
  Widget build(BuildContext context) {

    return  GestureDetector(
        onTap: () {
          _isButtonDisabled ? null : handleResend(); // Button enabled when countdown finishes
        },
        child: Text(
          _isButtonDisabled
              ? "Resend OTP in $_start seconds" // Countdown text
              : "Resend OTP", // Enabled text
          style: Theme.of(context).
          textTheme.bodyMedium?.
          copyWith(color: _isButtonDisabled
          ? Theme.of(context).colorScheme.onSurface 
          : Theme.of(context).colorScheme.primary,fontWeight: FontWeight.w500),
        ),
      );
  }
}

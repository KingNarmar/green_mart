import 'dart:async';

import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class ResendCodeWidget extends StatefulWidget {
  const ResendCodeWidget({super.key});

  @override
  State<ResendCodeWidget> createState() => _ResendCodeWidgetState();
}

class _ResendCodeWidgetState extends State<ResendCodeWidget> {
  int _secondsRemaining = 30;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        setState(() {
          _secondsRemaining--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  String get formattedTime {
    int minutes = _secondsRemaining ~/ 60;
    int seconds = _secondsRemaining % 60;
    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool canResend = _secondsRemaining == 0;

    return GestureDetector(
      onTap: canResend
          ? () {
              setState(() {
                _secondsRemaining = 90;
              });
              _startTimer();
            }
          : null,
      child: Align(
        alignment: AlignmentGeometry.center,

        child: Text(
          canResend
              ? "Resend OTP"
              : "Resend confirmation code ($formattedTime)",
          style: canResend
              ? TextStyles.normalText.copyWith(
                  color: AppColors.primaryColor,
                  fontSize: 14,
                )
              : TextStyles.normalText.copyWith(
                  color: AppColors.greyColor,
                  fontSize: 15,
                ),
        ),
      ),
    );
  }
}

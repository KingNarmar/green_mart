import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/navigations.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/features/auth/screens/number_screen.dart';
import 'package:green_mart/features/auth/widgets/resend_code.dart';
import 'package:pinput/pinput.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.white),
      body: Padding(
        padding: EdgeInsetsGeometry.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Enter Verification Code", style: TextStyles.title),
            SizedBox(height: 7),
            Text(
              "We have sent SMS to: 01XXXXXXXXXX",
              style: TextStyles.normalText.copyWith(
                color: AppColors.greyColor,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 30),
            Pinput(
              length: 5,
              defaultPinTheme: PinTheme(
                width: 65,
                height: 65,
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Color.fromRGBO(30, 60, 87, 1),
                  fontWeight: FontWeight.w600,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.accentColor,
                ),
              ),
            ),
            SizedBox(height: 30),
            Align(
              alignment: AlignmentGeometry.centerRight,
              child: TextButton(
                onPressed: () {
                  pop(NumberScreen(), context);
                },
                child: Text(
                  "Change phone Number",
                  style: TextStyles.normalText.copyWith(
                    color: AppColors.greyColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            MainButton(text: "Confirm", onPressed: () {}),
            SizedBox(height: 16),
            ResendCodeWidget(),
          ],
        ),
      ),
    );
  }
}

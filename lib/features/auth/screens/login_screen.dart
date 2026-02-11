import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_mart/core/components/custom_text_form_field.dart';
import 'package:green_mart/core/components/main_button.dart';
import 'package:green_mart/core/components/password_text_form_field.dart';
import 'package:green_mart/core/constants/app_pictures.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [SvgPicture.asset(AppPictures.carrotSVG)],
            ),
            SizedBox(height: 40),
            Text("Login", style: TextStyles.title),
            SizedBox(height: 16),
            Text(
              "Enter your email and password",
              style: TextStyles.normalText.copyWith(
                fontSize: 14,
                color: AppColors.greyColor,
              ),
            ),
            SizedBox(height: 38),
            Text(
              "Email",
              style: TextStyles.title.copyWith(color: AppColors.greyColor),
            ),
            SizedBox(height: 7),
            CustomTextFormField(hint: "example@gmail.com"),
            SizedBox(height: 12),
            Text(
              "Password",
              style: TextStyles.title.copyWith(color: AppColors.greyColor),
            ),
            PasswordTextFormField(),
            SizedBox(height: 20),
            Align(
              alignment: AlignmentGeometry.centerRight,
              child: Text(
                "Forget Password?",
                style: TextStyles.normalText.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            SizedBox(height: 40),
            MainButton(text: "Log In", onPressed: () {}),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Dont't have an account?",
                        style: TextStyles.caption1,
                      ),
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Sign Up",
                            style: TextStyles.caption1.copyWith(
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

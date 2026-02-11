import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_mart/core/constants/app_pictures.dart';
import 'package:green_mart/core/functions/validations.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/custom_text_form_field.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/core/widgets/password_text_form_field.dart';
import 'package:green_mart/features/auth/widgets/auth_footer.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUnfocus,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [SvgPicture.asset(AppPictures.carrotSVG)],
              ),
              SizedBox(height: 45),
              Text("Sign Up", style: TextStyles.title),
              SizedBox(height: 13),
              Text(
                "Enter your credentials to continue",
                style: TextStyles.normalText.copyWith(
                  color: AppColors.greyColor,
                ),
              ),
              SizedBox(height: 45),
              Text(
                "Name",
                style: TextStyles.title.copyWith(color: AppColors.greyColor),
              ),
              CustomTextFormField(
                hint: "Enter Your Name",
                validator: (input) {
                  if (input == null || input.isEmpty) {
                    return "Enter Your Name";
                  } else if (!isNameValid(input) || input.length <= 3) {
                    return "Enter a Valid Name";
                  }
                  return null;
                },
              ),
              SizedBox(height: 12),
              Text(
                "Email",
                style: TextStyles.title.copyWith(color: AppColors.greyColor),
              ),
              CustomTextFormField(
                hint: "example@gmail.com",
                validator: (input) {
                  if (input == null || input.isEmpty) {
                    return "Enter Your Email";
                  } else if (!isEmailValid(input)) {
                    return "Enter Your Correct Email";
                  }
                  return null;
                },
              ),
              SizedBox(height: 12),
              Text(
                "Password",
                style: TextStyles.title.copyWith(color: AppColors.greyColor),
              ),
              PasswordTextFormField(
                validator: (input) {
                  if (input == null || input.isEmpty) {
                    return "Create Your Password";
                  } else if (!isPasswordValid(input)) {
                    return "Password Should Be (6+ chars, upper, lower, digit)";
                  }
                  return null;
                },
              ),
              SizedBox(height: 30),
              MainButton(
                text: "Sign Up",
                onPressed: () {
                  if (formKey.currentState!.validate()) {}
                },
              ),
              SizedBox(height: 25),
              AuthFooter(text: "Already have an account?", textButton: "Login"),
            ],
          ),
        ),
      ),
    );
  }
}

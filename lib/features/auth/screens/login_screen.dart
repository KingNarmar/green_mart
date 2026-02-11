import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_mart/core/constants/app_pictures.dart';
import 'package:green_mart/core/functions/navigations.dart';
import 'package:green_mart/core/functions/validations.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/custom_text_form_field.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/core/widgets/password_text_form_field.dart';
import 'package:green_mart/features/auth/screens/sign_up_screen.dart';
import 'package:green_mart/features/auth/widgets/auth_footer.dart';
import 'package:green_mart/features/explore/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              CustomTextFormField(
                hint: "example@gmail.com",
                validator: (input) {
                  if (input == null || input.isEmpty) {
                    return "Enter Your Email";
                  } else if (!isEmailValid(input)) {
                    return "Please Enter the Right Email";
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
                    return "Please Enter Your Password";
                  } else if (!isPasswordValid(input)) {
                    return "Password Should Be (6+ chars, upper, lower, digit)";
                  }
                  return null;
                },
              ),
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
              MainButton(
                text: "Log In",
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    pushReplacment(HomeScreen(), context);
                  }
                },
              ),
              SizedBox(height: 25),
              AuthFooter(
                text: "Don't have an account",
                textButton: "Sign Up",
                onPressed: () {
                  pushReplacment(SignUpScreen(), context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/navigations.dart';
import 'package:green_mart/core/functions/validations.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/custom_text_form_field.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/features/auth/screens/verification_screen.dart';

class NumberScreen extends StatefulWidget {
  const NumberScreen({super.key});

  @override
  State<NumberScreen> createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.white),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUnfocus,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Enter your mobile number", style: TextStyles.title),
              SizedBox(height: 7),
              Text(
                "We need to verify you. We will send you a one time verification code. ",
                style: TextStyles.normalText.copyWith(
                  color: AppColors.greyColor,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 42),
              CustomTextFormField(
                hint: "01xxxxxxxxx",
                keyboardType: TextInputType.number,
                validator: (input) {
                  if (input == null || input.isEmpty) {
                    return "You Have to enter your number";
                  } else if (!isEgyNymberValid(input)) {
                    return "The Number is not Valid";
                  }
                  return null;
                },
              ),
              SizedBox(height: 46),
              MainButton(
                text: "Next",
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    pushTo(VerificationScreen(), context);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

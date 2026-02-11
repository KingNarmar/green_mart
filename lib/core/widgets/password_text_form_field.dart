import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class PasswordTextFormField extends StatefulWidget {
  const PasswordTextFormField({super.key, this.validator});

  final String? Function(String?)? validator;

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  bool ishide = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: ishide,
      keyboardType: TextInputType.emailAddress,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: ishide
              ? Icon(Icons.remove_red_eye)
              : Icon(Icons.visibility_off),
          onPressed: () {
            setState(() {
              ishide = !ishide;
            });
          },
        ),
        hintText: "*************",
        hintStyle: TextStyles.caption2.copyWith(fontSize: 14),
      ),
      validator: widget.validator,
      onChanged: (value) {},
    );
  }
}

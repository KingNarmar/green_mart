import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    this.keyboardType,
    this.validator,
  });
  final String hint;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyles.caption2.copyWith(fontSize: 14),
      ),
      validator: validator,
      onChanged: (value) {},
    );
  }
}

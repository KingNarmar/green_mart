import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_pictures.dart';
import 'package:green_mart/core/styles/app_colors.dart';

class PicSection extends StatelessWidget {
  const PicSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.accentColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Image.asset(AppPictures.apple),
    );
  }
}

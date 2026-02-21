import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class BottomSheetTile extends StatelessWidget {
  const BottomSheetTile({super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(20),
      child: Row(
        children: [
          Expanded(
            child: Text(
              text1,
              style: TextStyles.caption1.copyWith(
                color: AppColors.greyColor,
                fontSize: 16,
              ),
            ),
          ),
          Text(text2, style: TextStyles.caption1),
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
        ],
      ),
    );
  }
}

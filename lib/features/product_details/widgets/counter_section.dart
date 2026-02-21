import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class CounterSection extends StatelessWidget {
  const CounterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            TextButton(
              onPressed: () {},
              child: Text("-", style: TextStyles.headLine),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: BoxBorder.all(color: AppColors.greyColor),
              ),
              child: Text("  1  ", style: TextStyles.headLine),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "+",
                style: TextStyles.headLine.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
    
        Text("\$4.99", style: TextStyles.title),
      ],
    );
  }
}

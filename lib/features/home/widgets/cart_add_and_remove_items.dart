import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class CartAddAndRemoveItems extends StatefulWidget {
  const CartAddAndRemoveItems({super.key});

  @override
  State<CartAddAndRemoveItems> createState() => _CartAddAndRemoveItemsState();
}

class _CartAddAndRemoveItemsState extends State<CartAddAndRemoveItems> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              if (counter > 0) {
                counter--;
              }
            });
          },
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(width: 0.91, color: AppColors.accentColor),
            ),
            child: Center(
              child: Text(
                "-",
                style: TextStyles.title.copyWith(color: AppColors.greyColor),
              ),
            ),
          ),
        ),
        Text("$counter", style: TextStyles.title),
        GestureDetector(
          onTap: () {
            setState(() {
              counter++;
            });
          },
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(width: 0.91, color: AppColors.primaryColor),
            ),
            child: Center(
              child: Text(
                "+",
                style: TextStyles.title.copyWith(color: AppColors.primaryColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

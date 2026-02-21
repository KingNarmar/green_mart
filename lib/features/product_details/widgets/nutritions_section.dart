import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class NutritionsSection extends StatelessWidget {
  const NutritionsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text("Nutritions", style: TextStyles.caption1),
        ),
        Container(
          height: 20,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
    
            color: AppColors.accentColor,
          ),
          child: Center(
            child: Text("100gr", style: TextStyles.normalText),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class ExpansionSection extends StatelessWidget {
  const ExpansionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(
        context,
      ).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        initiallyExpanded: true,
        tilePadding: EdgeInsetsGeometry.zero,
        childrenPadding: EdgeInsetsGeometry.zero,
        title: Text("Product Detail", style: TextStyles.caption1),
        children: [
          Text(
            "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
          ),
        ],
      ),
    );
  }
}

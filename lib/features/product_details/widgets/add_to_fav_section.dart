import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class AddToFavSection extends StatelessWidget {
  const AddToFavSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Naturel Red Apple", style: TextStyles.title),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite_border),
        ),
      ],
    );
  }
}

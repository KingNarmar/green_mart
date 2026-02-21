import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class ReviewSection extends StatelessWidget {
  const ReviewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            "Review",
            style: TextStyles.title.copyWith(fontSize: 14),
          ),
        ),
    
        // ...List.generate(
        //   5,
        //   (index) => Icon(Icons.star, color: Colors.amber),
        // ),
        for (var i = 0; i < 5; i++)
          Icon(Icons.star, color: Colors.amber),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_pictures.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/custom_svg_picture.dart';
import 'package:green_mart/features/home/data/product_model.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.model});
  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      width: 157,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.accentColor),
        color: AppColors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Center(child: Image.network(model.image))),
            SizedBox(height: 10),
            Text("Bananas", style: TextStyles.title.copyWith(fontSize: 16)),
            Text(
              model.weight,
              style: TextStyles.normalText.copyWith(color: AppColors.greyColor),
            ),
            SizedBox(height: 17),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$${model.price}", style: TextStyles.caption1),
                IconButton(
                  onPressed: () {},
                  icon: CustomSvgPicture(path: AppPictures.addItemSVG),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

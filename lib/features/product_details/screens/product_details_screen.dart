import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/features/product_details/widgets/add_to_fav_section.dart';
import 'package:green_mart/features/product_details/widgets/counter_section.dart';
import 'package:green_mart/features/product_details/widgets/expansion_section.dart';
import 'package:green_mart/features/product_details/widgets/nutritions_section.dart';
import 'package:green_mart/features/product_details/widgets/pic_section.dart';
import 'package:green_mart/features/product_details/widgets/review_section.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.ios_share))],
        backgroundColor: AppColors.accentColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PicSection(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AddToFavSection(),
                  Text(
                    "1Kg",
                    style: TextStyles.caption1.copyWith(
                      color: AppColors.greyColor,
                    ),
                  ),
                  CounterSection(),
                  Divider(),
                  ExpansionSection(),
                  Divider(),
                  NutritionsSection(),
                  Divider(),
                  ReviewSection(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
        child: MainButton(text: "Add To Cart", onPressed: () {}),
      ),
    );
  }
}

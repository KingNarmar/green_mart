import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_pictures.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/custom_svg_picture.dart';
import 'package:green_mart/core/widgets/custom_text_form_field.dart';
import 'package:green_mart/features/home/data/product_model.dart';
import 'package:green_mart/features/home/widgets/item_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomSvgPicture(
          path: AppPictures.logoSVG,
          color: AppColors.primaryColor,
        ),
        backgroundColor: AppColors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              CustomTextFormField(
                hint: "Search Store",
                icon: IconButton(
                  onPressed: () {},
                  icon: CustomSvgPicture(
                    path: AppPictures.searchBarIconSVG,
                    color: AppColors.greyColor,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text("Exclusive Offer", style: TextStyles.title),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyles.supTitle.copyWith(
                        color: AppColors.primaryColor,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 226,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 10);
                  },
                  itemCount: offers.length,
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ItemCard(model: offers[index]);
                  },
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text("Best Selling", style: TextStyles.title),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyles.supTitle.copyWith(
                        color: AppColors.primaryColor,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 226,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 10);
                  },
                  itemCount: offers.length,
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ItemCard(model: offers[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

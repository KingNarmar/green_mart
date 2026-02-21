import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_pictures.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/widgets/custom_svg_picture.dart';
import 'package:green_mart/core/widgets/custom_text_form_field.dart';
import 'package:green_mart/features/home/data/product_model.dart';
import 'package:green_mart/features/home/widgets/item_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,

        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        title: CustomTextFormField(
          hint: "Search",
          icon: IconButton(
            onPressed: () {},
            icon: CustomSvgPicture(path: AppPictures.searchBarIconSVG),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.1,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            mainAxisExtent: 300,
          ),
          itemBuilder: (context, index) => ItemCard(model: offers[index]),
          itemCount: offers.length,
        ),
      ),
    );
  }
}

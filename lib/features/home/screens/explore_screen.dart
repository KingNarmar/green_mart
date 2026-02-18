import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_pictures.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/custom_svg_picture.dart';
import 'package:green_mart/core/widgets/custom_text_form_field.dart';
import 'package:green_mart/features/home/data/category_model.dart';
import 'package:green_mart/features/home/widgets/category_card.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Find Products",
          style: TextStyles.title.copyWith(fontSize: 18),
        ),
        centerTitle: true,
        backgroundColor: AppColors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CustomTextFormField(
              hint: "Search Store",
              icon: IconButton(
                onPressed: () {},
                icon: CustomSvgPicture(path: AppPictures.searchBarIconSVG),
              ),
            ),
            SizedBox(height: 22),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 1.1,
                ),
                itemCount: categoryModels.length,
                itemBuilder: (context, index) {
                  return CategoryCard(model: categoryModels[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

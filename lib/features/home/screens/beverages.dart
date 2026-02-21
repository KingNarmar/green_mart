import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/features/home/data/product_model.dart';
import 'package:green_mart/features/home/widgets/item_card.dart';

class Beverages extends StatelessWidget {
  const Beverages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Frash Fruits & Vegetable", style: TextStyles.title),
        backgroundColor: AppColors.white,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.tune))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 1.1,
                  mainAxisExtent: 300,
                ),
                itemBuilder: (context, index) {
                  return ItemCard(model: offers[index]);
                },
                itemCount: offers.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

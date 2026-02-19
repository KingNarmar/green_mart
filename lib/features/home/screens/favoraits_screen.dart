import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/features/home/data/favoruit_model.dart';
import 'package:green_mart/features/home/widgets/fave_tile.dart';

class FavoraitsScreen extends StatelessWidget {
  const FavoraitsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favoraits", style: TextStyles.title),
        centerTitle: true,
        backgroundColor: AppColors.white,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return FaveTile(model: favDummyData[index]);
        },
        separatorBuilder: (context, index) => Divider(),
        itemCount: favDummyData.length,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
        child: MainButton(text: "Add All To Cart", onPressed: () {}),
      ),
    );
  }
}

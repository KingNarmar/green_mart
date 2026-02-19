import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_pictures.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class AccoountScreen extends StatelessWidget {
  const AccoountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ListTile(
              leading: ClipOval(child: Image.asset(AppPictures.profilePic)),
              title: Row(
                children: [
                  Text("Mina Adly", style: TextStyles.title),
                  Icon(Icons.edit, color: AppColors.primaryColor),
                ],
              ),
              subtitle: Text(
                "Mina@Gmail.com",
                style: TextStyles.normalText.copyWith(
                  color: AppColors.greyColor,
                ),
              ),
            ),
            Divider(),
            ListTile()
          ],
        ),
      ),
    );
  }
}

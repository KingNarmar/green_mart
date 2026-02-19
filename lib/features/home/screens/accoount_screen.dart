import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_pictures.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/features/home/data/account_screen_details_model.dart';
import 'package:green_mart/features/home/widgets/account_screen_tile.dart';

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
            SizedBox(height: 40),

            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Divider();
                },
                separatorBuilder: (context, index) {
                  return AccountScreenTile(model: detailsList[index]);
                },
                itemCount: detailsList.length,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    AppColors.accentColor,
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.logout, color: AppColors.primaryColor, size: 25),
                    Text(
                      "Log Out",
                      style: TextStyles.title.copyWith(
                        color: AppColors.primaryColor,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

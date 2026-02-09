import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:green_mart/core/components/main_button.dart';
import 'package:green_mart/core/constants/app_pictures.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppPictures.onbordingPic,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),

          Positioned(
            bottom: 100,
            left: 20,
            right: 20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppPictures.carrotSVG,
                  colorFilter: ColorFilter.mode(
                    AppColors.white,
                    BlendMode.srcIn,
                  ),
                ),
                SizedBox(height: 35),
                Text(
                  "Welcom \nto our Store",

                  textAlign: TextAlign.center,
                  style: TextStyles.headLine.copyWith(color: AppColors.white),
                ),
                Text(
                  "Ger your groceries in as fast as one hour",

                  textAlign: TextAlign.center,
                  style: TextStyles.normalText.copyWith(
                    color: AppColors.accentColor,
                  ),
                ),
                SizedBox(height: 35),
                MainButton(onPressed: () {}, text: "Get Started"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

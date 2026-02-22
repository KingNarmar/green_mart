import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_pictures.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/custom_svg_picture.dart';
import 'package:green_mart/core/widgets/main_button.dart';

class OrderAccepted extends StatelessWidget {
  const OrderAccepted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomSvgPicture(path: AppPictures.doneSVG),
              SizedBox(height: 60),
              Text(
                "Your Order has been accepted",
                style: TextStyles.headLine.copyWith(fontSize: 27),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                "Your items has been placcd and is on it’s way to being processed",
                style: TextStyles.caption1,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 60),
              MainButton(text: "Go to Home", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

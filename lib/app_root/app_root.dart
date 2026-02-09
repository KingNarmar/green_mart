import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_fonts.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/features/intro/screens/splash_screen.dart';

class GreenMart extends StatelessWidget {
  const GreenMart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: AppFonts.poppins,
        scaffoldBackgroundColor: AppColors.white,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryColor,
          onSurface: AppColors.blackColor,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            minimumSize: const Size(double.infinity, 55),

            foregroundColor: AppColors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(15),
            ),
          ),
        ),
      ),
      builder: (context, child) {
        return SafeArea(top: false, child: child ?? SizedBox());
      },
      home: SplashScreen(),
    );
  }
}

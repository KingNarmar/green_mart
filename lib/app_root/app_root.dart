import 'package:flutter/material.dart';
import 'package:green_mart/core/colors.dart';
import 'package:green_mart/features/intro/screens/splash_screen.dart';

class GreenMart extends StatelessWidget {
  const GreenMart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.white),
      home: SplashScreen(),
    );
  }
}

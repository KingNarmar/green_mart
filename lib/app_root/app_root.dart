import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_themes.dart';
import 'package:green_mart/features/product_details/screens/product_details_screen.dart';

class GreenMart extends StatelessWidget {
  const GreenMart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.lightTheme,
      builder: (context, child) {
        return SafeArea(top: false, child: child ?? SizedBox());
      },
      home: ProductDetailsScreen(),
    );
  }
}

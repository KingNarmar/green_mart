import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_pictures.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/widgets/custom_svg_picture.dart';
import 'package:green_mart/features/home/screens/home_screen.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});

  @override
  State<MainAppScreen> createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: _navBar(), body: HomeScreen());
  }

  Container _navBar() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xff555e58).withValues(alpha: 0.1),
            offset: Offset(0, -5),
            blurRadius: 10,
          ),
        ],
      ),
      child: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: CustomSvgPicture(path: AppPictures.homeSVG),
            activeIcon: CustomSvgPicture(
              path: AppPictures.homeSVG,
              color: AppColors.primaryColor,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: CustomSvgPicture(path: AppPictures.searchSVG),
            activeIcon: CustomSvgPicture(
              path: AppPictures.searchSVG,
              color: AppColors.primaryColor,
            ),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: CustomSvgPicture(path: AppPictures.cartSVG),
            activeIcon: CustomSvgPicture(
              path: AppPictures.cartSVG,
              color: AppColors.primaryColor,
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: CustomSvgPicture(path: AppPictures.heartSVG),
            activeIcon: CustomSvgPicture(
              path: AppPictures.heartSVG,
              color: AppColors.primaryColor,
            ),
            label: "Favoraits",
          ),
          BottomNavigationBarItem(
            icon: CustomSvgPicture(path: AppPictures.profileSVG),
            activeIcon: CustomSvgPicture(
              path: AppPictures.profileSVG,
              color: AppColors.primaryColor,
            ),
            label: "Account",
          ),
        ],
      ),
    );
  }
}

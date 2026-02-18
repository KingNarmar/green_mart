import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/app_colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/features/home/data/cart_tile_model.dart';
import 'package:green_mart/features/home/widgets/cart_tile.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart", style: TextStyles.title),
        centerTitle: true,
        backgroundColor: AppColors.white,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return CartTile(model: cartItems[index]);
        },
        separatorBuilder: (context, index) => Divider(),
        itemCount: cartItems.length,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
        child: MainButton(text: "Go to checkout", onPressed: () {}),
      ),
    );
  }
}

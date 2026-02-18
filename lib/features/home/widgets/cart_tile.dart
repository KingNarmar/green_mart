import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/features/home/data/cart_tile_model.dart';
import 'package:green_mart/features/home/widgets/cart_add_and_remove_items.dart';

class CartTile extends StatelessWidget {
  const CartTile({super.key, required this.model});
  final CartTileModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        height: 90,
        child: Row(
          children: [
            Image.network(model.pic),
            SizedBox(width: 29),
            Column(
              children: [
                Text(
                  model.name,
                  style: TextStyles.normalText.copyWith(fontSize: 14),
                ),
                Text(model.qty, style: TextStyles.normalText),
                SizedBox(height: 10),
                CartAddAndRemoveItems(),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.close)),
                  Text(model.price, style: TextStyles.title),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

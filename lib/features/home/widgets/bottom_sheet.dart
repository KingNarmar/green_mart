import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/features/home/widgets/bottom_sheet_tile.dart';

class BottomSheet extends StatelessWidget {
  const BottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("CheckOut", style: TextStyles.title),
              IconButton(onPressed: () {}, icon: Icon(Icons.close)),
            ],
          ),
        ),
        Divider(),
        BottomSheetTile(text1: "Delivery", text2: "Select Method"),
        Divider(),
        BottomSheetTile(text1: "Payment", text2: "Select Method"),
        Divider(),
        BottomSheetTile(
          text1: "Promo Code",
          text2: "Pick Discount",
        ),
        Divider(),
        BottomSheetTile(text1: "Total Cost", text2: "\$13.97"),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            "By placing an order you agree to our \nTerms And Conditions",
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: MainButton(text: "Place Order", onPressed: () {}),
        ),
      ],
    );
  }
}

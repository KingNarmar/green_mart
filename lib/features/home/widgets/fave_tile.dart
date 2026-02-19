import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/features/home/data/favoruit_model.dart';

class FaveTile extends StatelessWidget {
  const FaveTile({super.key, required this.model});
  final FavoruitModel model;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(right: 40),
        child: Image.network(model.pic, height: 100),
      ),
      title: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Text(
          model.title,
          style: TextStyles.normalText.copyWith(fontSize: 14),
        ),
      ),
      subtitle: Text(model.supTitle, style: TextStyles.normalText),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(model.price, style: TextStyles.caption1),
          IconButton(onPressed: () {}, icon: Icon(Icons.forward)),
        ],
      ),
    );
  }
}

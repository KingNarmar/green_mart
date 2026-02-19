import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/features/home/data/account_screen_details_model.dart';

class AccountScreenTile extends StatelessWidget {
  const AccountScreenTile({super.key, required this.model});
  final AccountScreenDetailsModel model;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(model.icon),
      title: Text(model.title, style: TextStyles.title.copyWith(fontSize: 16)),
      trailing: Icon(Icons.forward),
    );
  }
}

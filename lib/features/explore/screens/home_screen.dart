import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen", style: TextStyles.title)),
    );
  }
}

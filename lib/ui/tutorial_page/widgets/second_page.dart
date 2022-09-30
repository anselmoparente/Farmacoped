import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('mark_the_favorites'.tr),
        Container(
          height: 250,
          width: 250,
          color: Colors.red,
        ),
        Text('save_your_most_important_medications_to_favorites'.tr),
      ],
    );
  }
}

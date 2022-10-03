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
        Image.asset(
          'assets/images/tutorial_icon_2.png',
          height: Get.width * 0.9,
          width: Get.width * 0.9,
        ),
        Text('save_your_most_important_medications_to_favorites'.tr),
      ],
    );
  }
}

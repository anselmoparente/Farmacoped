import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('your_portable_leaflet'.tr),
        Image.asset(
          'assets/images/tutorial_icon_1.png',
          height: Get.width * 0.9,
          width: Get.width * 0.9,
        ),
        Text('find_key_information_about_your_medication'.tr),
      ],
    );
  }
}

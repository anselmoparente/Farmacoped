import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'your_portable_leaflet'.tr,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.indigo[900],
          ),
        ),
        Image.asset(
          'assets/images/tutorial_icon_1.png',
          height: Get.width * 0.9,
          width: Get.width * 0.9,
        ),
        Text(
          'find_key_information_about_your_medication'.tr,
          style: TextStyle(
            fontSize: 22,
            color: Colors.indigo[700],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

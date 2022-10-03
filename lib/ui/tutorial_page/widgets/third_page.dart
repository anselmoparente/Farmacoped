import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('offline_access'.tr),
        Image.asset(
          'assets/images/tutorial_icon_3.png',
          height: Get.width * 0.9,
          width: Get.width * 0.9,
        ),
        Text('download_prescriptions'.tr),
      ],
    );
  }
}

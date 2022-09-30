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
        Container(
          height: 250,
          width: 250,
          color: Colors.red,
        ),
        Text('download_prescriptions'.tr),
      ],
    );
  }
}

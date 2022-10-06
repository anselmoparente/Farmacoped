import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DownloadedMedication extends StatelessWidget {
  const DownloadedMedication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('downloaded'.tr),
        backgroundColor: Colors.deepPurple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(Get.width, 48.0),
          ),
        ),
      ),
    );
  }
}

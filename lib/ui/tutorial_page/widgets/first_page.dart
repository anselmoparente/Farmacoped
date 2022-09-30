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
        Container(
          height: 250,
          width: 250,
          color: Colors.red,
        ),
        Text('find_key_information_about_your_medication'.tr),
      ],
    );
  }
}

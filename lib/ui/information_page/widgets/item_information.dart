import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemInformation extends StatelessWidget {
  final String name;
  final String information;
  final String image;

  const ItemInformation({
    required this.name,
    required this.information,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: Get.width * 0.8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: Get.height * 0.5,
              height: Get.height * 0.5,
              child: Image.asset(
                image,
              ),
            ),
            SizedBox(height: 10),
            Text(name, style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Container(
              height: 200,
              child: AutoSizeText(information),
            ),
          ],
        ),
      ),
    );
  }
}

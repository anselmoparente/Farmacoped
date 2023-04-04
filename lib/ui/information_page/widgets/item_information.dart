import 'dart:math';

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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  child: Image.asset(
                    image,
                  ),
                ),
                Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
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

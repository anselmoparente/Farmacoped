import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemInformation extends StatelessWidget {
  const ItemInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(),
              Column(
                children: [
                  Text(
                    'Anselmo Parente Martins',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 500,
                    width: Get.width * 0.8,
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                      maxLines: 500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

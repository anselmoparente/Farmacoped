import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MedicationPage extends StatelessWidget {
  final String title;

  const MedicationPage({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
        backgroundColor: Colors.deepPurple,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(Get.height * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_outline,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.file_download_outlined,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

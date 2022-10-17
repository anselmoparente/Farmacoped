import 'package:farmacoped/controllers/main_controller.dart';
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
        title: Text(Get.arguments.name),
        backgroundColor: Colors.deepPurple,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(Get.height * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(
                () => IconButton(
                  onPressed: () {
                    if (!Get.find<MainController>()
                        .favoriteMedications
                        .contains(Get.arguments)) {
                      Get.find<MainController>()
                          .favoriteMedications
                          .add(Get.arguments);
                    } else {
                      Get.find<MainController>()
                          .favoriteMedications
                          .remove(Get.arguments);
                    }
                  },
                  icon: Icon(
                    Get.find<MainController>()
                            .favoriteMedications
                            .contains(Get.arguments)
                        ? Icons.favorite
                        : Icons.favorite_outline,
                    color: Colors.white,
                  ),
                ),
              ),
              Obx(
                () => IconButton(
                  onPressed: () {
                    if (!Get.find<MainController>()
                        .downloadedMedications
                        .contains(Get.arguments)) {
                      Get.find<MainController>()
                          .downloadedMedications
                          .add(Get.arguments);
                    } else {
                      Get.find<MainController>()
                          .downloadedMedications
                          .remove(Get.arguments);
                    }
                  },
                  icon: Icon(
                    Get.find<MainController>()
                            .downloadedMedications
                            .contains(Get.arguments)
                        ? Icons.file_download_done_outlined
                        : Icons.file_download_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

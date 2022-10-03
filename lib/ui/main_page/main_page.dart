import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:farmacoped/controllers/main_controller.dart';

class MainPage extends GetView<MainController> {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
        child: Container(
          height: 56,
          width: Get.width,
          decoration: BoxDecoration(
            color: Colors.purple[400],
            borderRadius: const BorderRadius.all(
              Radius.circular(48),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      if (controller.currentPage != 0) {
                        controller.currentPage = 0;
                      }
                    },
                    color: controller.currentPage == 0
                        ? Colors.white
                        : Colors.grey,
                    icon: const Icon(Icons.info_outline),
                  ),
                  IconButton(
                    onPressed: () {
                      if (controller.currentPage != 1) {
                        controller.currentPage = 1;
                      }
                    },
                    color: controller.currentPage == 1
                        ? Colors.white
                        : Colors.grey,
                    icon: const Icon(Icons.file_download_outlined),
                  ),
                  IconButton(
                    onPressed: () {
                      if (controller.currentPage != 2) {
                        controller.currentPage = 2;
                      }
                    },
                    color: controller.currentPage == 2
                        ? Colors.white
                        : Colors.grey,
                    icon: const Icon(Icons.search),
                  ),
                  IconButton(
                    onPressed: () {
                      if (controller.currentPage != 3) {
                        controller.currentPage = 3;
                      }
                    },
                    color: controller.currentPage == 3
                        ? Colors.white
                        : Colors.grey,
                    icon: const Icon(Icons.favorite_outline),
                  ),
                  IconButton(
                    onPressed: () {
                      if (controller.currentPage != 4) {
                        controller.currentPage = 4;
                      }
                    },
                    color: controller.currentPage == 4
                        ? Colors.white
                        : Colors.grey,
                    icon: const Icon(Icons.settings_outlined),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
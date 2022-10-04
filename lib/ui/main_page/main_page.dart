import 'package:farmacoped/ui/downloaded_medication/downloaded_medication.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:farmacoped/controllers/main_controller.dart';

class MainPage extends GetView<MainController> {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(),
          Container(),
          const DownloadedMedication(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
        child: Container(
          height: 56,
          width: Get.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(48),
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 186, 186, 186),
                blurRadius: 2.0,
                spreadRadius: 2.0,
                offset: Offset(0.0, 0.0),
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {
                      if (controller.currentPage != 0) {
                        controller.currentPage = 0;
                        pageController.jumpToPage(0);
                      }
                    },
                    style: const ButtonStyle(
                      overlayColor:
                          MaterialStatePropertyAll<Color>(Colors.transparent),
                    ),
                    child: Icon(
                      Icons.info_outline,
                      size: 28,
                      color: controller.currentPage == 0
                          ? Colors.deepPurple
                          : Colors.grey,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      if (controller.currentPage != 1) {
                        controller.currentPage = 1;
                        pageController.jumpToPage(1);
                      }
                    },
                    style: const ButtonStyle(
                      overlayColor:
                          MaterialStatePropertyAll<Color>(Colors.transparent),
                    ),
                    child: Icon(
                      Icons.file_download_outlined,
                      size: 28,
                      color: controller.currentPage == 1
                          ? Colors.deepPurple
                          : Colors.grey,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      if (controller.currentPage != 2) {
                        controller.currentPage = 2;
                        pageController.jumpToPage(2);
                      }
                    },
                    style: const ButtonStyle(
                      overlayColor:
                          MaterialStatePropertyAll<Color>(Colors.transparent),
                    ),
                    child: Icon(
                      Icons.search,
                      size: 28,
                      color: controller.currentPage == 2
                          ? Colors.deepPurple
                          : Colors.grey,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      if (controller.currentPage != 3) {
                        controller.currentPage = 3;
                        pageController.jumpToPage(3);
                      }
                    },
                    style: const ButtonStyle(
                      overlayColor:
                          MaterialStatePropertyAll<Color>(Colors.transparent),
                    ),
                    child: Icon(
                      Icons.favorite_outline,
                      size: 28,
                      color: controller.currentPage == 3
                          ? Colors.deepPurple
                          : Colors.grey,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      if (controller.currentPage != 4) {
                        controller.currentPage = 4;
                        pageController.jumpToPage(4);
                      }
                    },
                    style: const ButtonStyle(
                      overlayColor:
                          MaterialStatePropertyAll<Color>(Colors.transparent),
                    ),
                    child: Icon(
                      Icons.settings_outlined,
                      size: 28,
                      color: controller.currentPage == 4
                          ? Colors.deepPurple
                          : Colors.grey,
                    ),
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

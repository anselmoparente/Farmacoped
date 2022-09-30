import 'dart:developer';

import 'package:farmacoped/ui/tutorial_page/widgets/first_page.dart';
import 'package:farmacoped/ui/tutorial_page/widgets/second_page.dart';
import 'package:farmacoped/ui/tutorial_page/widgets/third_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:farmacoped/controllers/tutorial_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TutorialPage extends GetView<TutorialController> {
  const TutorialPage({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController(
      initialPage: 0,
    );

    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Column(
        children: [
          SizedBox(
            height: Get.height * 0.9,
            child: PageView(
              controller: pageController,
              onPageChanged: (int? page) {
                controller.currentPage = page!;
                log(controller.currentPage.toString());
              },
              children: const [
                FirstPage(),
                SecondPage(),
                ThirdPage(),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                child: SmoothPageIndicator(
                  controller: pageController,
                  effect: ScaleEffect(
                    activeDotColor: Colors.deepPurple,
                    dotColor: Colors.deepPurple[200]!,
                  ),
                  count: 3,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                  onPressed: () {
                    log(pageController.page.toString());
                  },
                  child: Obx(
                    () => Text(
                      controller.currentPage == 2
                          ? 'start'.tr.toUpperCase()
                          : 'skip'.tr.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

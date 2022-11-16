import 'dart:developer';

import 'package:farmacoped/services/ad_mob_service.dart';
import 'package:farmacoped/ui/favorites_page/favorites_page.dart';
import 'package:farmacoped/ui/type_medication_page/type_medication_page.dart';
import 'package:farmacoped/ui/search_page/search_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:farmacoped/controllers/main_controller.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class MainPage extends GetView<MainController> {
  MainPage({Key? key}) : super(key: key) {
    _initAd();
  }

  late InterstitialAd _interstitialAd;

  void _initAd() {
    InterstitialAd.load(
      adUnitId: AdMobService.InterstitialAdUnitId!,
      request: AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (InterstitialAd ad) {
          _interstitialAd = ad;
          _interstitialAd.show();
        },
        onAdFailedToLoad: (error) {
          log(error.toString());
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const TypeMedicationPage(),
          const SearchPage(),
          const FavoritePage(),
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
          child: Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    Icons.search,
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
                    Icons.favorite_outline,
                    size: 28,
                    color: controller.currentPage == 2
                        ? Colors.deepPurple
                        : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

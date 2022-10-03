import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:farmacoped/routes/app_pages.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () => Get.offAllNamed(Routes.TUTORIAL));

    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Farmacoped',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.indigo[900],
              ),
            ),
            Image.asset(
              'assets/images/splash_icon.png',
              height: Get.width * 0.9,
              width: Get.width * 0.9,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:farmacoped/controllers/tutorial_controller.dart';

class TutorialPage extends GetView<TutorialController> {
  const TutorialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Farmacoped'),
      ),
    );
  }
}

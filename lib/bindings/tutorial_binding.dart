import 'package:get/get.dart';

import 'package:farmacoped/controllers/tutorial_controller.dart';

class TutorialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TutorialController>(
      () => TutorialController(),
    );
  }
}

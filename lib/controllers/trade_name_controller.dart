import 'package:farmacoped/models/laboratory_model.dart';
import 'package:get/get.dart';

class TradeNameController extends GetxController {
  final laboratories = <LaboratoryModel>[].obs;

  @override
  void onInit() {
    for (int i = 0; i < Get.arguments.length; i++) {
      laboratories.add(Get.arguments[i]);
    }
    super.onInit();
  }
}

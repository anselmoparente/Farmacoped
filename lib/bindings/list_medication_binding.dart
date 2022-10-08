import 'package:farmacoped/controllers/list_medication_controller.dart';
import 'package:get/get.dart';

class ListMedicationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListMedicationController>(
      () => ListMedicationController(),
    );
  }
}

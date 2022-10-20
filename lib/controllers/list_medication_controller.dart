import 'package:farmacoped/models/medication_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListMedicationController extends GetxController {
  final medicationSearch = TextEditingController(text: '');

  final medications = <MedicationModel>[].obs;

  @override
  void onInit() {
    for (int i = 0; i < Get.arguments.length; i++) {
      medications.add(Get.arguments[i]);
    }
    super.onInit();
  }
}

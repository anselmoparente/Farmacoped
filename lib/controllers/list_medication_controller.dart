import 'package:farmacoped/models/medication_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListMedicationController extends GetxController {
  final nameSearch = TextEditingController(text: '');

  final medications = <MedicationModel>[].obs;
  final medicationsSearch = <MedicationModel>[].obs;

  @override
  void onInit() async {
    await populateListMedicationForType();
    super.onInit();
  }

  Future<void> populateListMedicationForType() async {
    for (int i = 0; i < Get.arguments.length; i++) {
      medications.add(Get.arguments[i]);
    }

    search();
  }

  void search() {
    medicationsSearch.clear();
    for (int i = 0; i < medications.length; i++) {
      if (medications[i].name.contains(nameSearch.text)) {
        medicationsSearch.add(medications[i]);
      }
    }
  }
}

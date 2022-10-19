import 'package:farmacoped/controllers/main_controller.dart';
import 'package:farmacoped/models/medication_model.dart';
import 'package:farmacoped/routes/app_pages.dart';
import 'package:farmacoped/ui/type_medication_page/widgets/type_medication.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TypeMedicationPage extends GetView<MainController> {
  const TypeMedicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('type_medications'.tr),
        backgroundColor: Colors.deepPurple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(Get.width, 48.0),
          ),
        ),
      ),
      body: SizedBox(
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TypeMedication(
              title: 'antibiotics'.tr,
              image: '',
              onTap: () {
                List<MedicationModel> typeMedications = [];
                for (int i = 0; i < controller.medications.length; i++) {
                  if (controller.medications[i].type == 'Antibiótico') {
                    typeMedications.add(controller.medications[i]);
                  }
                }
                Get.toNamed(Routes.LIST_MEDICATION, arguments: typeMedications);
              },
            ),
            TypeMedication(
              title: 'anti_inflammatory'.tr,
              image: '',
              onTap: () {
                List<MedicationModel> typeMedications = [];
                for (int i = 0; i < controller.medications.length; i++) {
                  if (controller.medications[i].type == 'Anti-inflamatório') {
                    typeMedications.add(controller.medications[i]);
                  }
                }
                Get.toNamed(Routes.LIST_MEDICATION, arguments: typeMedications);
              },
            ),
            TypeMedication(
              title: 'anesthetics'.tr,
              image: '',
              onTap: () {
                List<MedicationModel> typeMedications = [];
                for (int i = 0; i < controller.medications.length; i++) {
                  if (controller.medications[i].type == 'Anestésico') {
                    typeMedications.add(controller.medications[i]);
                  }
                }
                Get.toNamed(Routes.LIST_MEDICATION, arguments: typeMedications);
              },
            ),
            TypeMedication(
              title: 'antifungal'.tr,
              image: '',
              onTap: () {
                List<MedicationModel> typeMedications = [];
                for (int i = 0; i < controller.medications.length; i++) {
                  if (controller.medications[i].type == 'Antifúngico') {
                    typeMedications.add(controller.medications[i]);
                  }
                }
                Get.toNamed(Routes.LIST_MEDICATION, arguments: typeMedications);
              },
            ),
          ],
        ),
      ),
    );
  }
}

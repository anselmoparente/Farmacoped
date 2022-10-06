import 'package:farmacoped/ui/type_medication_page/widgets/type_medication.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TypeMedicationPage extends StatelessWidget {
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
              title: 'painkillers'.tr,
              image: '',
              onTap: () {},
            ),
            TypeMedication(
              title: 'anesthetics'.tr,
              image: '',
              onTap: () {},
            ),
            TypeMedication(
              title: 'anti_inflammatory'.tr,
              image: '',
              onTap: () {},
            ),
            TypeMedication(
              title: 'steroids'.tr,
              image: '',
              onTap: () {},
            ),
            TypeMedication(
              title: 'antibiotics'.tr,
              image: '',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

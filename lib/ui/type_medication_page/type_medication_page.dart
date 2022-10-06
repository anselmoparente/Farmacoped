import 'dart:developer';

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
        title: const Text('Medicações'),
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
              title: 'Analgésicos',
              image: '',
              onTap: () {
                log('salve');
              },
            ),
            TypeMedication(
              title: 'Anestésicos',
              image: '',
              onTap: () {},
            ),
            TypeMedication(
              title: 'Anti-inflamatórios',
              image: '',
              onTap: () {},
            ),
            TypeMedication(
              title: 'Corticóides',
              image: '',
              onTap: () {},
            ),
            TypeMedication(
              title: 'Antibióticos',
              image: '',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmacoped/models/laboratory_model.dart';
import 'package:farmacoped/models/medication_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  final _currentPage = 0.obs;
  int get currentPage => _currentPage.value;
  set currentPage(int value) => _currentPage.value = value;

  final medications = <MedicationModel>[].obs;
  final downloadedMedications = <MedicationModel>[].obs;
  final favoriteMedications = <MedicationModel>[].obs;

  final medicationSearch = TextEditingController(text: '');

  @override
  void onInit() async {
    FirebaseFirestore db = FirebaseFirestore.instance;
    QuerySnapshot query = await db.collection('medicamentos').get();

    for (var element in query.docs) {
      List<LaboratoryModel> laboratories = [];
      for (int i = 0; i < element.get('nomes comerciais').length; i++) {
        if (element.get('nomes comerciais').length > 0) {
          laboratories.add(
            LaboratoryModel(
              medicationName: element.get('nomes comerciais')[i]['nome'],
              laborationName: element.get('nomes comerciais')[i]['laboratório'],
              amount: element.get('nomes comerciais')[i]
                  ['quanto tem em cada embalagem?'],
              composition: element.get('nomes comerciais')[i]
                  ['composição (mg/ml)'],
              warnings: element.get('nomes comerciais')[i]
                  ['atenção alérgicos e diabéticos'],
            ),
          );
        }
      }
      medications.add(
        MedicationModel(
          name: element.get('nome'),
          type: element.get('tipo'),
          indicatedAge: element.get('idade indicada'),
          contraindications: element.get('contraindicações'),
          adverseEffects: element.get('efeitos adversos mais comuns'),
          takeOnAnEmptyStomach: element.get('tomar em jejum?'),
          routeOfAdministration: element.get('via de administração'),
          guidelines: element.get('dose padrão e orientações'),
          adjustDose: element
              .get('ajustar dose em pacientes renais, hepáticos e cardíacos?'),
          tradeNames: laboratories,
        ),
      );
    }
    log(medications.toString());
    super.onInit();
  }
}

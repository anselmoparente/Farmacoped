import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmacoped/models/laboratory_model.dart';
import 'package:farmacoped/models/medication_model.dart';
import 'package:farmacoped/services/ad_mob_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class MainController extends GetxController {
  final _currentPage = 0.obs;
  int get currentPage => _currentPage.value;
  set currentPage(int value) => _currentPage.value = value;

  final medications = <MedicationModel>[].obs;
  final medicationsSearch = <MedicationModel>[].obs;
  final favoriteMedications = <MedicationModel>[].obs;

  final nameSearch = TextEditingController(text: '');

  InterstitialAd? interstitialAd;

  final box = GetStorage();

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

    search();

    if (box.read('favorites') != null) {
      for (int i = 0; i < medications.length; i++) {
        for (int j = 0; j < box.read('favorites').length; j++) {
          if (medications[i].name == box.read('favorites')[j]) {
            favoriteMedications.add(medications[i]);
          }
        }
      }
    }

    super.onInit();
  }

  void search() {
    medicationsSearch.clear();
    for (int i = 0; i < medications.length; i++) {
      if (medications[i]
          .name
          .toLowerCase()
          .contains(nameSearch.text.toLowerCase())) {
        medicationsSearch.add(medications[i]);
      }
    }
  }

  void saveFavorites(List<String> medications) {
    box.write('favorites', medications);
  }

  void _createInterstitialAd() {
    InterstitialAd.load(
      adUnitId: AdMobService.InterstitialAdUnitId!,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) => interstitialAd = ad,
        onAdFailedToLoad: (LoadAdError error) => interstitialAd = null,
      ),
    );
  }

  void _showInterstitialAd() {
    if (interstitialAd != null) {
      interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
        onAdDismissedFullScreenContent: (ad) {
          ad.dispose();
          _createInterstitialAd();
        },
        onAdFailedToShowFullScreenContent: (ad, error) {
          ad.dispose();
          _createInterstitialAd();
        },
      );
      interstitialAd!.show();
      interstitialAd = null;
    }
  }
}

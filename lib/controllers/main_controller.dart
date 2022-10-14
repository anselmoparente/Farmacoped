import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  final _currentPage = 0.obs;
  int get currentPage => _currentPage.value;
  set currentPage(int value) => _currentPage.value = value;

  @override
  void onInit() async {
    FirebaseFirestore db = FirebaseFirestore.instance;
    QuerySnapshot query = await db.collection('medicamentos').get();
    query.docs.forEach((element) {
      log(element.get('nome'));
    });
    super.onInit();
  }
}

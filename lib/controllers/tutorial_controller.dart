import 'package:get/get.dart';

class TutorialController extends GetxController {
  final _currentPage = 0.obs;
  int get currentPage => _currentPage.value;
  set currentPage(int value) => _currentPage.value = value;
}

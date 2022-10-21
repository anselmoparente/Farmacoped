import 'package:farmacoped/controllers/trade_name_controller.dart';
import 'package:get/get.dart';

class TradeNameBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TradeNameController>(
      () => TradeNameController(),
    );
  }
}

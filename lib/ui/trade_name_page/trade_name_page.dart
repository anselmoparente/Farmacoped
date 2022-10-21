import 'dart:developer';

import 'package:farmacoped/controllers/trade_name_controller.dart';
import 'package:farmacoped/ui/trade_name_page/widgets/trade_name_expansion_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TradeNamePage extends GetView<TradeNameController> {
  const TradeNamePage({super.key});

  @override
  Widget build(BuildContext context) {
    log(Get.arguments.toString());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('trade_names'.tr),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: controller.laboratories.length,
        itemBuilder: (BuildContext context, int index) {
          return TradeExpansionTile(
            title: controller.laboratories[index].laborationName,
            subtitle: controller.laboratories[index].medicationName,
            content:
                '•${'amount'.tr}\n\n${controller.laboratories[index].amount}\n\n•${'composition'.tr}\n\n${controller.laboratories[index].composition}\n\n•${'warnings'.tr}\n\n${controller.laboratories[index].warnings}',
          );
        },
      ),
    );
  }
}

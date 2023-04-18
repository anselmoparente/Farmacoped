import 'package:farmacoped/controllers/main_controller.dart';
import 'package:farmacoped/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoritePage extends GetView<MainController> {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('favorites'.tr),
        backgroundColor: Colors.deepPurple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(Get.width, 48.0),
          ),
        ),
      ),
      body: Obx(
        () => Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: controller.favoriteMedications.isNotEmpty
              ? ListView.builder(
                  itemCount: controller.favoriteMedications.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () => Get.toNamed(
                        Routes.MEDICATION,
                        arguments: controller.favoriteMedications[index],
                      ),
                      child: Container(
                        height: 64,
                        margin: EdgeInsets.symmetric(
                          horizontal: Get.width * 0.05,
                          vertical: 8.0,
                        ),
                        decoration: BoxDecoration(
                          color: controller.favoriteMedications[index].type ==
                                  'Antibiótico'
                              ? Colors.lightBlue
                              : controller.favoriteMedications[index].type ==
                                      'Anti-inflamatório'
                                  ? Colors.blue.shade700
                                  : controller.favoriteMedications[index]
                                              .type ==
                                          'Analgésico'
                                      ? Colors.deepPurple.shade400
                                      : controller.favoriteMedications[index]
                                                  .type ==
                                              'Anestésico'
                                          ? Colors.purpleAccent.shade400
                                          : Color.fromARGB(255, 244, 135, 217),
                          borderRadius: BorderRadius.all(
                            Radius.circular(24.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 186, 186, 186),
                              blurRadius: 5.0,
                              spreadRadius: 2.0,
                              offset: Offset(0.0, 0.0),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller.favoriteMedications[index].name,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    controller.favoriteMedications[index].type,
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 12.0),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                )
              : Center(
                  child: Text(
                    'favorite_medications_empty'.tr,
                    style: const TextStyle(color: Colors.grey, fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                ),
        ),
      ),
    );
  }
}

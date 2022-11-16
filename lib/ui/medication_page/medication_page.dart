import 'dart:developer';

import 'package:farmacoped/controllers/main_controller.dart';
import 'package:farmacoped/routes/app_pages.dart';
import 'package:farmacoped/ui/medication_page/widgets/medication_expansion_tile.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';

class MedicationPage extends StatelessWidget {
  final String title;

  const MedicationPage({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(Get.arguments.name),
        backgroundColor: Colors.deepPurple,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(Get.height * 0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      launchUrl(
                        Uri.parse(
                          'https://www.gov.br/anvisa/pt-br/assuntos/medicamentos',
                        ),
                        mode: LaunchMode.inAppWebView,
                      );
                    },
                    icon: Icon(
                      Icons.trending_up,
                      color: Colors.white,
                    ),
                  ),
                  Obx(
                    () => IconButton(
                      onPressed: () {
                        if (!Get.find<MainController>()
                            .favoriteMedications
                            .contains(Get.arguments)) {
                          Get.find<MainController>()
                              .favoriteMedications
                              .add(Get.arguments);

                          List<String> medications = [];
                          for (int i = 0;
                              i <
                                  Get.find<MainController>()
                                      .favoriteMedications
                                      .length;
                              i++) {
                            medications.add(Get.find<MainController>()
                                .favoriteMedications[i]
                                .name);
                          }

                          Get.find<MainController>().saveFavorites(medications);
                        } else {
                          Get.find<MainController>()
                              .favoriteMedications
                              .remove(Get.arguments);
                        }
                      },
                      icon: Icon(
                        Get.find<MainController>()
                                .favoriteMedications
                                .contains(Get.arguments)
                            ? Icons.favorite
                            : Icons.favorite_outline,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  Get.toNamed(
                    Routes.TRADE_NAME,
                    arguments: Get.arguments.tradeNames,
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    vertical: 4.0,
                    horizontal: 4.0,
                  ),
                ),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 4,
                  children: [
                    Text(
                      'trade_names'.tr,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.deepPurple,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: Colors.deepPurple,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MedicationExpansionTile(
                title: 'indicated_age'.tr,
                content: Get.arguments.indicatedAge,
              ),
              MedicationExpansionTile(
                title: 'contraindications'.tr,
                content: Get.arguments.contraindications,
              ),
              MedicationExpansionTile(
                title: 'adverse_effects'.tr,
                content: Get.arguments.adverseEffects,
              ),
              if (Get.arguments.takeOnAnEmptyStomach != '')
                MedicationExpansionTile(
                  title: 'adverse_effects'.tr,
                  content: Get.arguments.takeOnAnEmptyStomach,
                ),
              MedicationExpansionTile(
                title: 'route_administration'.tr,
                content: Get.arguments.routeOfAdministration,
              ),
              MedicationExpansionTile(
                title: 'guidelines'.tr,
                content: Get.arguments.guidelines,
              ),
              MedicationExpansionTile(
                title: 'adjust_dose'.tr,
                content: Get.arguments.adjustDose,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

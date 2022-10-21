import 'package:farmacoped/controllers/main_controller.dart';
import 'package:farmacoped/ui/medication_page/widgets/custom_expansion_tile.dart';
import 'package:flutter/material.dart';
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
                  Obx(
                    () => IconButton(
                      onPressed: () {
                        if (!Get.find<MainController>()
                            .favoriteMedications
                            .contains(Get.arguments)) {
                          Get.find<MainController>()
                              .favoriteMedications
                              .add(Get.arguments);
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
                  Obx(
                    () => IconButton(
                      onPressed: () {
                        if (!Get.find<MainController>()
                            .downloadedMedications
                            .contains(Get.arguments)) {
                          Get.find<MainController>()
                              .downloadedMedications
                              .add(Get.arguments);
                        } else {
                          Get.find<MainController>()
                              .downloadedMedications
                              .remove(Get.arguments);
                        }
                      },
                      icon: Icon(
                        Get.find<MainController>()
                                .downloadedMedications
                                .contains(Get.arguments)
                            ? Icons.file_download_done_outlined
                            : Icons.file_download_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
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
                          fontSize: 18, color: Colors.deepPurple),
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
              CustomExpansionTile(
                title: 'indicated_age'.tr,
                subtitle: Get.arguments.indicatedAge,
              ),
              CustomExpansionTile(
                title: 'contraindications'.tr,
                subtitle: Get.arguments.contraindications,
              ),
              CustomExpansionTile(
                title: 'adverse_effects'.tr,
                subtitle: Get.arguments.adverseEffects,
              ),
              if (Get.arguments.takeOnAnEmptyStomach != '')
                CustomExpansionTile(
                  title: 'adverse_effects'.tr,
                  subtitle: Get.arguments.takeOnAnEmptyStomach,
                ),
              CustomExpansionTile(
                title: 'route_administration'.tr,
                subtitle: Get.arguments.routeOfAdministration,
              ),
              CustomExpansionTile(
                title: 'guidelines'.tr,
                subtitle: Get.arguments.guidelines,
              ),
              CustomExpansionTile(
                title: 'adjust_dose'.tr,
                subtitle: Get.arguments.adjustDose,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

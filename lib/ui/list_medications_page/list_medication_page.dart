import 'package:farmacoped/controllers/list_medication_controller.dart';
import 'package:farmacoped/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListMedicationPage extends GetView<ListMedicationController> {
  const ListMedicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('medications'.tr),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            width: Get.width * 0.9,
            child: TextFormField(
              controller: controller.medicationSearch,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(24.0),
                  ),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(24.0),
                  ),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                prefixIcon: const Icon(
                  Icons.search,
                  size: 20,
                  color: Colors.grey,
                ),
                suffixIcon: TextButton(
                  onPressed: () => controller.medicationSearch.text = '',
                  style: const ButtonStyle(
                    overlayColor:
                        MaterialStatePropertyAll<Color>(Colors.transparent),
                  ),
                  child: const Icon(
                    Icons.cancel,
                    color: Colors.grey,
                  ),
                ),
              ),
              cursorColor: Colors.indigo,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: controller.medications.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => Get.toNamed(
                    Routes.MEDICATION,
                    arguments: controller.medications[index],
                  ),
                  child: Container(
                    height: 64,
                    margin: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.05,
                      vertical: 8.0,
                    ),
                    decoration: BoxDecoration(
                      color: controller.medications[index].type == 'Antibiótico'
                          ? Colors.blueAccent
                          : controller.medications[index].type ==
                                  'Anti-inflamatório'
                              ? Colors.pinkAccent
                              : controller.medications[index].type ==
                                      'Anestésico'
                                  ? Colors.deepOrange
                                  : Colors.greenAccent,
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
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                controller.medications[index].name,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                controller.medications[index].type,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 16.0),
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
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
        ],
      ),
    );
  }
}

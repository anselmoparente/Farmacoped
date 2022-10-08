import 'package:farmacoped/controllers/list_medication_controller.dart';
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
          TextFormField(),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

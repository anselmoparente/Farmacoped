import 'package:farmacoped/ui/information_page/widgets/item_information.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('informations'.tr),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => ItemInformation(),
      ),
    );
  }
}

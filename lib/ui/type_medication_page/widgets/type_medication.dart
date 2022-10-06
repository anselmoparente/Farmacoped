import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TypeMedication extends StatelessWidget {
  final String title;
  final String image;
  final void Function()? onTap;

  const TypeMedication({
    required this.title,
    required this.image,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: Get.height * 0.125,
        width: Get.width * 0.9,
        decoration: const BoxDecoration(
          color: Colors.white,
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
        child: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 24,
            children: [
              const Icon(Icons.medication, size: 56),
              Text(
                title.toUpperCase(),
                style: const TextStyle(color: Colors.grey, fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

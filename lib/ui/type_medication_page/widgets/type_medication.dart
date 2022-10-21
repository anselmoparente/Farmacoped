import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TypeMedication extends StatelessWidget {
  final String title;
  final String image;
  final Color color;
  final void Function()? onTap;

  const TypeMedication({
    required this.title,
    required this.image,
    required this.color,
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
        decoration: BoxDecoration(
          color: color,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: Get.width * 0.05),
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(24.0),
                    ),
                  ),
                  child: Image.asset(
                    image,
                    width: 75,
                    height: 75,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: Get.width * 0.05),
                child: Text(
                  title.toUpperCase(),
                  style: const TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

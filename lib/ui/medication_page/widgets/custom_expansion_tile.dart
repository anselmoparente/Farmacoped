import 'package:flutter/material.dart';

class CustomExpansionTile extends StatelessWidget {
  final String title;
  final String subtitle;

  const CustomExpansionTile({
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.indigo,
          fontWeight: FontWeight.bold,
        ),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            subtitle,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.indigo,
            ),
          ),
        ),
      ],
    );
  }
}

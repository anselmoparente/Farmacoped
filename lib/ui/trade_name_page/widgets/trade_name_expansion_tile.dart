import 'package:flutter/material.dart';

class TradeExpansionTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String content;

  const TradeExpansionTile({
    required this.title,
    required this.subtitle,
    required this.content,
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
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.indigo,
        ),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            content,
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

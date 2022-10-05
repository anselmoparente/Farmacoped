import 'package:flutter/material.dart';

class DownloadedMedication extends StatelessWidget {
  const DownloadedMedication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Baixados'),
      ),
    );
  }
}

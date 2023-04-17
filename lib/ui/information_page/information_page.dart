import 'package:farmacoped/ui/information_page/widgets/item_information.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> info = {
      'names': [
        'Morgana Pontes Brasil Gradvohl',
        'Francisco Xavier Paranhos Coêlho Simões',
        'Letícia Brasil Gradvohl',
        'Tássia Aguiar de Oliveira',
      ],
      'informations': [
        'Graduada em Odontologia pela UFC\nEspecialista em Odontopediatria em Unicastelo\nEspecialista em Ortodontia pela Uningá\nEspecialista em hof pela Faipe\nMestre em Psicologia Unifor\nProfessora da área de clínica infantil da Unifor\nProfessora do projeto de pacientes especiais e mamãe bebê\nProfessora de residência em Hof',
        'Graduado em odontologia pela Faculdade de Odontologia da UFBA\nEspecialista em Odontopediatria pela APCD - Bauru\nMestre em Clínica Odontológica pela Faculdade de Odontologia da UFBA\nDoutor em Odontopediatria pela Faculdade de Odontologia da USP\nProfessor Titular em Odontopediatria do Curso de Odontologia da UESB\nProfessor Adjunto do Curso de Odontologia da EBMSP',
        'Acadêmica do 7º semestre de Medicina na Universidade de Fortaleza, atual vice presidente da Liga de Geriatria e Gerontologia da UNIFOR e atual bolsista FUNCAP de Iniciação Científica no Hospital Walter Cantídeo',
        'Advogada e, atualmente, acadêmica do 10º semestre de Odontologia na Universidade de Fortaleza - Unifor, participo da Liga Nacional Acadêmica da ABOPED desde 2020. Fui monitora da disciplina de Clínica Infantil II durante os anos de 2020 a 2022.',
      ],
      'images': [
        'assets/photo/morgana.png',
        'assets/photo/francisco.png',
        'assets/photo/leticia.png',
        'assets/photo/tassia.png',
      ],
    };

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('informations'.tr),
        backgroundColor: Colors.deepPurple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(Get.width, 48.0),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: info['names'].length,
        itemBuilder: (context, index) => ItemInformation(
          name: info['names'][index],
          information: info['informations'][index],
          image: info['images'][index],
        ),
      ),
    );
  }
}

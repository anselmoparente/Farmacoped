import 'package:farmacoped/models/laboratory_model.dart';
import 'package:farmacoped/models/model.dart';

class MedicationModel implements Model {
  final String name;
  final String type;
  final String indicatedAge;
  final String contraindications;
  final String adverseEffects;
  final String takeOnAnEmptyStomach;
  final String routeOfAdministration;
  final String guidelines;
  final String adjustDose;
  final List<LaboratoryModel>? tradeNames;

  MedicationModel({
    required this.name,
    required this.type,
    required this.indicatedAge,
    required this.contraindications,
    required this.adverseEffects,
    required this.takeOnAnEmptyStomach,
    required this.routeOfAdministration,
    required this.guidelines,
    required this.adjustDose,
    required this.tradeNames,
  });

  @override
  Map<String, dynamic> toMap() {
    return {};
  }

  @override
  String toString() {
    return 'MedicationModel{nome: $name, tipo:$type, idade indicada: $indicatedAge, contraindicações: $contraindications, efeitos adversos: $adverseEffects, tomar em jejum? $takeOnAnEmptyStomach, via de administração: $routeOfAdministration, dose padrão e orientações: $guidelines, ajustar dose em pacientes renais, hepáticos e cardíacos? $adjustDose, nomes comerciais: $tradeNames}';
  }
}

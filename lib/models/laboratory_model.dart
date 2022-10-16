import 'package:farmacoped/models/model.dart';

class LaboratoryModel implements Model {
  final String medicationName;
  final String laborationName;
  final String amount;
  final String composition;
  final String warnings;

  LaboratoryModel({
    required this.medicationName,
    required this.laborationName,
    required this.amount,
    required this.composition,
    required this.warnings,
  });

  LaboratoryModel.fromMap(Map<String, dynamic> map)
      : medicationName = map['nome'] is String ? map['nome'] as String : '',
        laborationName =
            map['laboratório'] is String ? map['laboratório'] as String : '',
        amount = map['quanto tem em cada embalagem?'] is String
            ? map['quanto tem em cada embalagem?'] as String
            : '',
        composition = map['composição (mg/ml)'] is String
            ? map['composição (mg/ml)'] as String
            : '',
        warnings = map['atenção alérgicos e diabéticos'] is String
            ? map['atenção alérgicos e diabéticos'] as String
            : '';

  @override
  Map<String, dynamic> toMap() {
    return {
      'amount': amount,
      'composition': composition,
      'warnings': warnings,
    };
  }

  @override
  String toString() {
    return 'LaboratoryModel{nome: $medicationName, laboratório: $laborationName, quantidade: $amount, composição: $composition, avisos: $warnings}';
  }
}

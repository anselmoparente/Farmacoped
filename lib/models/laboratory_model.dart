import 'package:farmacoped/models/model.dart';

class RoomModel implements Model {
  final String amount;
  final String composition;
  final String warnings;

  RoomModel({
    required this.amount,
    required this.composition,
    required this.warnings,
  });

  RoomModel.fromMap(Map<String, dynamic> map)
      : amount = map['amount'] is String ? map['amount'] as String : '',
        composition =
            map['composition'] is String ? map['composition'] as String : '',
        warnings = map['warnings'] is String ? map['warnings'] as String : '';

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
    return 'LaboratoryModel{quantidade: $amount, composição: $composition, avisos: $warnings}';
  }
}

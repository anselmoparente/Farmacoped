import 'package:get/get.dart';

import 'package:farmacoped/translations/es_ES/es_es_translations.dart';
import 'package:farmacoped/translations/pt_BR/pt_br_translations.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'es_ES': esES,
        'pt_BR': ptBR,
      };
}

import 'package:get/get.dart';

import 'package:farmacoped/translations/es/es_translations.dart';
import 'package:farmacoped/translations/pt/pt_translations.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'es': es,
        'pt': pt,
      };
}

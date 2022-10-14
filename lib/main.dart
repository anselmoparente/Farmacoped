import 'package:farmacoped/bindings/tutorial_binding.dart';
import 'package:farmacoped/routes/app_pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:farmacoped/translations/app_translations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Farmacoped',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      locale: Get.deviceLocale,
      getPages: AppPages.pages,
      initialRoute: Routes.SPLASH,
      initialBinding: TutorialBinding(),
      translations: AppTranslations(),
      translationsKeys: AppTranslations().keys,
    );
  }
}

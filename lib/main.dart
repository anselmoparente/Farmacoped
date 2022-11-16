import 'package:farmacoped/bindings/tutorial_binding.dart';
import 'package:farmacoped/routes/app_pages.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:farmacoped/translations/app_translations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  MobileAds.instance.initialize();
  RequestConfiguration configuration =
      RequestConfiguration(testDeviceIds: ['F7F0378E676883330748E9A75F0A34E0']);
  MobileAds.instance.updateRequestConfiguration(configuration);
  await GetStorage.init();
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
      fallbackLocale: Locale('pt'),
      getPages: AppPages.pages,
      initialRoute: Routes.SPLASH,
      initialBinding: TutorialBinding(),
      translations: AppTranslations(),
      translationsKeys: AppTranslations().keys,
    );
  }
}

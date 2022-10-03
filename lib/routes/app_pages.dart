import 'package:farmacoped/ui/splash_page/splash_page.dart';
import 'package:get/get.dart';

import 'package:farmacoped/ui/main_page/main_page.dart';
import 'package:farmacoped/ui/tutorial_page/tutorial_page.dart';
import 'package:farmacoped/bindings/tutorial_binding.dart';
import 'package:farmacoped/bindings/main_binding.dart';

part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashPage(),
    ),
    GetPage(
      name: Routes.TUTORIAL,
      page: () => const TutorialPage(),
      binding: TutorialBinding(),
      transitionDuration: const Duration(milliseconds: 300),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: Routes.MAIN,
      page: () => const MainPage(),
      binding: MainBinding(),
    ),
  ];
}

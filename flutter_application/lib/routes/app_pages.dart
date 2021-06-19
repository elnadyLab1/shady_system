import 'package:flutter_application/tools/animation/Screens/Home/index.dart';
import 'package:flutter_application/tools/animation/Screens/Login/index.dart';
import 'package:flutter_application/tools/email_responseve/screens/main/main_screen.dart';
import 'package:get/get.dart';

import '../views/index.dart';
part './app_routes.dart';

// ignore: avoid_classes_with_only_static_members
class AppPages {
  static String init = Routes.splash.nameToRoute();

  static GetPage notFoundRoute = GetPage(
    name: Routes.notFound.nameToRoute(),
    page: () => const NotFound(),
    title: 'NotFound',
  );

  static final routes = [
    GetPage(
      name: Routes.splash.nameToRoute(),
      page: () => const SplashPage(),
      title: 'Splash',
    ),
    GetPage(
      name: Routes.log.nameToRoute(),
      page: () => const LogPage(),
      title: 'Log',
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.coffee.nameToRoute(),
      page: () => CoffeeView(),
      title: 'Coffee',
    ),
    GetPage(
      name: Routes.responseve.nameToRoute(),
      page: () => const ResponsevePage(),
      title: 'ResponsevePage',
    ),
    GetPage(
      name: Routes.home.nameToRoute(),
      page: () => const HomePage(),
      title: 'HomePage',
    ),
    GetPage(
      name: Routes.logAnimation.nameToRoute(),
      page: () => const LoginAnimation(),
      title: 'LoginAnimation',
    ),
    // GetPage(
    //   name: '/simple-navigation',
    //   title: 'Simple Navigation',
    //   page: () => SimpleNavigationView1(),
    //   binding: SimpleNavigationBinding1(),
    // customTransition: SizeTransitions(),
    //   children: [
    //     GetPage(
    //       name: '/2',
    //       page: () => SimpleNavigationView2(),
    //       binding: SimpleNavigationBinding2(),
    //     )
    //   ],
    // ),
  ];
}

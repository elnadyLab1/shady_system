import 'package:get/get.dart';

import '../views/index.dart';
part './app_routes.dart';

// ignore: avoid_classes_with_only_static_members
class AppPages {
  static String init = Routes.log.nameToRoute();

  static GetPage notFoundRoute = GetPage(
    name: 'not-found',
    page: () => const NotFound(),
    title: 'NotFound',
  );

  static final routes = [
    GetPage(
      name: Routes.log.nameToRoute(),
      page: () => const LogPage(),
      title: 'Log',
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.notFound.nameToRoute(),
      page: () => const LogPage(),
      title: 'NotFound',
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

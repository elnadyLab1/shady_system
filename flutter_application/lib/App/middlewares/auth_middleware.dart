import 'package:flutter/cupertino.dart';
import 'package:flutter_application/App/services/auth_service.dart';
import 'package:flutter_application/routes/app_pages.dart';
import 'package:get/get.dart';

class AuthMiddleware extends GetMiddleware {
  final auth = Get.find<AuthService>();

  @override
  RouteSettings? redirect(String? route) {
    final authService = Get.find<AuthService>();
    return authService.authed!.value
        ? null
        : RouteSettings(name: Routes.logAnimationPage.nameToRoute());
  }

  // @override
  // GetPage onPageCalled(GetPage page) {
  //   return page.copyWith(
  //       transition: auth.authed.value ? Transition.fade : Transition.upToDown,
  //       transitionDuration: 1.seconds);
  // }

  // @override
  // List<Bindings>? onBindingsStart(List<Bindings> bindings) {
  //   if (!auth.authed!.value) {
  //     bindings = <Bindings>[];
  //   }
  //   return super.onBindingsStart(bindings);
  // }

  // @override
  // Widget onPageBuilt(Widget page) {
  //   // print(page.runtimeType);
  //   return page;
  // }
}

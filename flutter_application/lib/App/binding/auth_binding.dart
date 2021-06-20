import 'package:get/get.dart';

import 'package:flutter_application/App/index.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IAuthRepository>(() => AuthRepository());
    Get.lazyPut(() => AuthController(authRepository: Get.find()));
  }
}

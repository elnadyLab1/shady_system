import 'package:get/get.dart';

import 'package:flutter_application/App/index.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IHomeRepository>(() => HomeRepository());
    Get.lazyPut(() => HomeController(homeRepository: Get.find()));
  }
}

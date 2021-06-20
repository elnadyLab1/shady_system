import 'package:get/get.dart';

import 'package:flutter_application/App/index.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IAppRepository>(() => AppRepository());
    Get.lazyPut(() => AppController(appRepository: Get.find()));
  }
}

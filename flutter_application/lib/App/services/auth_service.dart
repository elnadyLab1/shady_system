import 'package:get/get.dart';

class AuthService extends GetxService {
  Future<AuthService> init() async {
    return this;
  }

  RxBool? _authed;
  RxBool? get authed => _authed;
}

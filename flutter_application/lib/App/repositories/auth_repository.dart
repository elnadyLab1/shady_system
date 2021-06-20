import 'package:get/get.dart';

abstract class IAuthRepository {
  Future<dynamic> getPageName();
}

class AuthRepository implements IAuthRepository {
  @override
  Future<dynamic> getPageName() => 2.delay(() => 'Emma Page');
}

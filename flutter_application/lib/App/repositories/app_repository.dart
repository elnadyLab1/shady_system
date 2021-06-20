import 'package:get/get.dart';

// ignore: one_member_abstracts
abstract class IAppRepository {
  Future<dynamic> getPageName();
}

class AppRepository implements IAppRepository {
  @override
  Future<dynamic> getPageName() => 2.delay(() => 'Greens Page');
}

import 'package:get/get.dart';

// ignore: one_member_abstracts
abstract class IHomeRepository {
  Future<dynamic> getPageName();
}

class HomeRepository implements IHomeRepository {
  @override
  Future<dynamic> getPageName() => 2.delay(() => 'Greens Page');
}

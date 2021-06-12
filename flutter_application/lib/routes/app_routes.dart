part of './app_pages.dart';

abstract class Routes {
  static const log = 'Log';
  static const notFound = 'NotFound';
}

extension RoutesExtension on String {
  String nameToRoute() => '/${toLowerCase()}';
}
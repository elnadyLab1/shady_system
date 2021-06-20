part of './app_pages.dart';

abstract class Routes {
  static const splash = 'Splash';
  static const log = 'Log';
  static const notFound = 'NotFound';
  static const coffee = 'Coffee';
  static const responseve = 'ResponsevePage';
  static const home = 'HomePage';
  static const logAnimation = 'LoginAnimation';
  static const logAnimationPage = 'LogAnimationPage';
}

extension RoutesExtension on String {
  String nameToRoute() => '/${toLowerCase()}';
}
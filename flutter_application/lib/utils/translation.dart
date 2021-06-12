import 'package:get/get.dart';

import '../generated/locales.g.dart';

class Translation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => AppTranslation.translations;
}

import 'package:get/get.dart';

import '../index.dart';

class HomeController extends GetxController {
  HomeController({required this.homeRepository});
  final IHomeRepository homeRepository;

  final name = 'loading ..'.obs;

  /// Once the controller has entered memory, onInit will be called.
  /// It is preferable to use onInit instead of class constructors or initState method.
  /// Use onInit to trigger initial events like API searches, listeners registration
  /// or Workers registration.
  /// Workers are event handlers, they do not modify the final result,
  /// but it allows you to listen to an event and trigger customized actions.
  /// Here is an outline of how you can use them:

  /// made this if you need cancel you worker
  late Worker _ever;
  final count1 = 0.obs;
  @override
  onInit() {
    super.onInit();
    homeRepository.getPageName().then((value) => name.value = value.toString());

    /// Called every time the variable $_ is changed
    _ever = ever(count1, (_) => p("$_ has been changed (ever)"));

    everAll([count1, count1], (_) => p("$_ has been changed (everAll)"));

    /// Called first time the variable $_ is changed
    once(count1, (_) => p("$_ was changed once (once)"));

    /// Anti DDos - Called every time the user stops typing for 1 second, for example.
    debounce(count1, (_) => p("debouce$_ (debounce)"),
        time: const Duration(seconds: 1));

    /// Ignore all changes within 1 second.
    interval(count1, (_) => p("interval $_ (interval)"),
        time: const Duration(seconds: 1));
  }

  disposeWorker() {
    _ever.dispose();
    // or _ever();
  }
}

p(String string) {
  // ignore: avoid_print
  print(string);
}

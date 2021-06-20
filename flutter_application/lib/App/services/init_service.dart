import 'package:get/get.dart';

/// Is a smart move to make your Services intiialize before you run the Flutter app.
/// as you can control the execution flow (maybe you need to load some Theme configuration,
/// apiKey, language defined by the User... so load SettingService before running ApiService.
/// so GetMaterialApp() doesnt have to rebuild, and takes the values directly.
void initServices() async {
  // ignore: avoid_print
  print('starting services ...');

  /// Here is where you put get_storage, hive, shared_pref initialization.
  /// or moor connection, or whatever that's async.
  await Get.putAsync(() => DbService().init());
  // await Get.putAsync(SettingsService()).init();

  // ignore: avoid_print
  print('All services started...');
}

class DbService extends GetxService {
  Future<DbService> init() async {
    // ignore: avoid_print
    print('$runtimeType delays 2 sec');
    await 2.delay();

    // ignore: avoid_print
    print('$runtimeType ready!');
    return this;
  }
}

class SettingsService extends GetxService {
  void init() async {
    // ignore: avoid_print
    print('$runtimeType delays 1 sec');
    await 1.delay();

    // ignore: avoid_print
    print('$runtimeType ready!');
  }
}

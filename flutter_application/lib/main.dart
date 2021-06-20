import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:flutter_application/App/index.dart';
import 'routes/app_pages.dart';
import 'theme/app_theme.dart';
import 'utils/index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );

  if (!GetPlatform.isDesktop) await Firebase.initializeApp();
  // if (kIsWeb) {
  //   // initialiaze the facebook javascript SDK
  //   FacebookAuth.i.webInitialize(
  //     appId: "474013263826506", //<-- YOUR APP_ID
  //     cookie: true,
  //     xfbml: true,
  //     version: "v9.0",
  //   );
  // }

  // await initServices(); /// AWAIT SERVICES INITIALIZATION.
  runApp(
    DismissKeyboard(
      child: GetMaterialApp(
        enableLog: true,
        theme: appThemeData,
        // darkTheme: darkThemeData(context),
        title: "Application",
        translations: Translation(),
        initialBinding: AppBinding(),
        locale: const Locale('en', 'US'),
        fallbackLocale: const Locale('en', 'US'),
        logWriterCallback: Logger.write,
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.native,
        initialRoute: AppPages.init,
        getPages: AppPages.routes,
        unknownRoute: AppPages.notFoundRoute,
      ),
    ),
  );
}

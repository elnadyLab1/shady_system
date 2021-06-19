import 'package:flutter/material.dart';
import 'package:flutter_application/utils/index.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: Global.kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    iconTheme: const IconThemeData(color: Global.kContentColorLightTheme),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: Global.kContentColorLightTheme),
    colorScheme: const ColorScheme.light(
      primary: Global.kPrimaryColor,
      secondary: Global.kPrimaryColor,
      error: Global.kPrimaryColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: Global.kContentColorLightTheme.withOpacity(0.7),
      unselectedItemColor: Global.kContentColorLightTheme.withOpacity(0.32),
      selectedIconTheme: const IconThemeData(color: Global.kPrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  // Bydefault flutter provie us light and dark theme
  // we just modify it as our need
  return ThemeData.dark().copyWith(
    primaryColor: Global.kPrimaryColor,
    scaffoldBackgroundColor: Global.kContentColorLightTheme,
    appBarTheme: appBarTheme,
    iconTheme: const IconThemeData(color: Global.kContentColorDarkTheme),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: Global.kContentColorDarkTheme),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: Global.kPrimaryColor,
      secondary: Global.kPrimaryColor,
      error: Global.kErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Global.kContentColorLightTheme,
      selectedItemColor: Colors.white70,
      unselectedItemColor: Global.kContentColorDarkTheme.withOpacity(0.32),
      selectedIconTheme: const IconThemeData(color: Global.kPrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}

const appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);

// use

// Text(
//               "Freedom talk any person of your \nmother language.",
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 color: Theme.of(context)
//                     .textTheme
//                     .bodyText1
//                     .color
//                     .withOpacity(0.64),
//               ),
//             )

// color: Theme.of(context).colorScheme.secondary,

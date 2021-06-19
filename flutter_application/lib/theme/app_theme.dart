import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_application/utils/index.dart';

final ThemeData appThemeData = ThemeData(
  primaryColor: Global.kPrimaryColor,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: GoogleFonts.secularOneTextTheme(),

  // brightness: Brightness.dark,
  // primarySwatch: Colors.deepPurple,
  // accentColor: Colors.orange,
  // colorScheme: ColorScheme.fromSwatch(
  //   primaryColorDark: primaryColorDark,
  //   accentColor: accentColor,
  //   cardColor: cardColor,
  //   backgroundColor: backgroundColor,
  //   errorColor: errorColor,
  //   brightness: _brightness,
  // primarySwatch: Colors.deepPurple,
  // ).copyWith(
  // secondary: Colors.orange,
  // ),
  // colorScheme: ColorScheme(
  //   primary:
  // ),
  // textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.orange),
  // fontFamily: 'SourceSansPro',
  // textTheme: textTheme,
);



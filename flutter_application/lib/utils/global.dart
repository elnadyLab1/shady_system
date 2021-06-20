import 'package:flutter/material.dart';

class Global {
  static const kPrimaryColor = Color(0xFFFE4350);
  static const formFieldColor = Colors.white;
  static const hintColor = Color.fromRGBO(255, 0, 0, 0.25);
  static const iconColor = Colors.green;

  static const kSecondaryColor = Color(0xFFFE9901);
  static const kContentColorLightTheme = Color(0xFF1D1D35);
  static const kContentColorDarkTheme = Color(0xFFF5FCF9);
  static const kWarninngColor = Color(0xFFF3BB1C);
  static const kErrorColor = Color(0xFFF03738);

  static const kDefaultPadding = 20.0;

  static const String imagePath = 'assets/images';
}

enum Option {
  logIn,
  signUp,
  success,
}

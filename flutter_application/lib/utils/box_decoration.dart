import 'package:flutter/material.dart';

BoxDecoration boxImage({
  String image = 'assets/images/one.png',
}) =>
    BoxDecoration(
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
    );

// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_application/routes/app_pages.dart';
import 'package:flutter_application/utils/index.dart';

Widget actionButton(String text) {
  return InkWell(
    onTap: () {
      Get.offAndToNamed(Routes.coffee.nameToRoute());
    },
    onDoubleTap: () {
      Get.offAndToNamed(Routes.logAnimation.nameToRoute());
    },
    child: Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Global.kPrimaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(
            color: Global.kPrimaryColor.withOpacity(0.2),
            spreadRadius: 4,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}

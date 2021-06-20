import 'package:flutter/material.dart';
import 'package:flutter_application/routes/app_pages.dart';
import 'dart:async';

import 'package:get/get.dart';

class StaggerAnimation extends StatelessWidget {
  StaggerAnimation({Key? key, required this.buttonController})
      : buttonSqueezeanimation = Tween(
          begin: 320.0,
          end: 70.0,
        ).animate(
          CurvedAnimation(
            parent: buttonController,
            curve: const Interval(
              0.0,
              0.150,
            ),
          ),
        ),
        buttomZoomOut = Tween(
          begin: 70.0,
          end: 2000.0,
        ).animate(
          CurvedAnimation(
            parent: buttonController,
            curve: const Interval(
              0.550,
              0.999,
              curve: Curves.bounceOut,
            ),
          ),
        ),
        containerCircleAnimation = EdgeInsetsTween(
          begin: const EdgeInsets.only(bottom: 50.0),
          end: const EdgeInsets.only(bottom: 0.0),
        ).animate(
          CurvedAnimation(
            parent: buttonController,
            curve: const Interval(
              0.500,
              0.800,
              curve: Curves.ease,
            ),
          ),
        ),
        super(key: key);

  final AnimationController buttonController;
  final Animation<EdgeInsets> containerCircleAnimation;
  final Animation buttonSqueezeanimation;
  final Animation buttomZoomOut;

  // ignore: prefer_void_to_null
  Future<Null> _playAnimation() async {
    try {
      await buttonController.forward();
      await buttonController.reverse();
      // ignore: empty_catches
    } on TickerCanceled {}
  }

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return Padding(
      padding: buttomZoomOut.value == 70
          ? const EdgeInsets.only(bottom: 50.0)
          : containerCircleAnimation.value,
      child: InkWell(
        onTap: () {
          _playAnimation();
        },
        child: Hero(
          tag: "fade",
          child: buttomZoomOut.value <= 300
              ? Container(
                  width: buttomZoomOut.value == 70
                      ? buttonSqueezeanimation.value
                      : buttomZoomOut.value,
                  height:
                      buttomZoomOut.value == 70 ? 60.0 : buttomZoomOut.value,
                  alignment: FractionalOffset.center,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(247, 64, 106, 1.0),
                    borderRadius: buttomZoomOut.value < 400
                        ? const BorderRadius.all(Radius.circular(30.0))
                        : const BorderRadius.all(Radius.circular(0.0)),
                  ),
                  child: buttonSqueezeanimation.value > 75.0
                      ? const Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 0.3,
                          ),
                        )
                      : buttomZoomOut.value < 300.0
                          ? const CircularProgressIndicator(
                              value: null,
                              strokeWidth: 1.0,
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.white),
                            )
                          : null)
              : Container(
                  width: buttomZoomOut.value,
                  height: buttomZoomOut.value,
                  decoration: BoxDecoration(
                    shape: buttomZoomOut.value < 500
                        ? BoxShape.circle
                        : BoxShape.rectangle,
                    color: const Color.fromRGBO(247, 64, 106, 1.0),
                  ),
                ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    buttonController.addListener(() {
      if (buttonController.isCompleted) {
        Get.offNamed(Routes.home.nameToRoute());
      }
    });
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: buttonController,
    );
  }
}

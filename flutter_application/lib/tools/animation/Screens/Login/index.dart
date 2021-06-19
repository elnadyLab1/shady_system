import 'package:flutter/material.dart';
import 'styles.dart';
import 'login_animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/animation.dart';
import 'dart:async';
import '../../Components/sign_up_link.dart';
import '../../Components/form.dart';
import '../../Components/sign_in_button.dart';
import '../../Components/white_tick.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class LoginAnimation extends StatefulWidget {
  const LoginAnimation({Key? key}) : super(key: key);
  @override
  LoginAnimationState createState() => LoginAnimationState();
}

class LoginAnimationState extends State<LoginAnimation>
    with TickerProviderStateMixin {
  late AnimationController _loginButtonController;
  var animationStatus = 0;
  @override
  void initState() {
    super.initState();
    _loginButtonController = AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _loginButtonController.dispose();
    super.dispose();
  }

  // ignore: prefer_void_to_null
  Future<Null> _playAnimation() async {
    try {
      await _loginButtonController.forward();
      await _loginButtonController.reverse();
      // ignore: empty_catches
    } on TickerCanceled {}
  }

  Future<bool> _onWillPop() async =>
      await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Are you sure?'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, "/home"),
                child: const Text('Yes'),
              ),
            ],
          );
        },
      ) ??
      false;

  @override
  Widget build(BuildContext context) {
    timeDilation = 0.4;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: backgroundImage,
          ),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color.fromRGBO(162, 146, 199, 0.8),
                  Color.fromRGBO(51, 51, 63, 0.9),
                ],
                stops: [0.2, 1.0],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(0.0, 1.0),
              ),
            ),
            child: ListView(
              padding: const EdgeInsets.all(0.0),
              children: <Widget>[
                Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Tick(image: tick),
                        const FormContainer(),
                        const SignUp()
                      ],
                    ),
                    animationStatus == 0
                        ? Padding(
                            padding: const EdgeInsets.only(bottom: 50.0),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  animationStatus = 1;
                                });
                                _playAnimation();
                              },
                              child: const SignIn(),
                            ),
                          )
                        : StaggerAnimation(
                            buttonController: _loginButtonController, //.view
                          ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

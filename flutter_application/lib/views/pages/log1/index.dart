import 'package:flutter/material.dart';

import 'package:flutter_application/utils/index.dart';

import 'components/login.dart';
import 'components/signup.dart';

class LogPage extends StatefulWidget {
  const LogPage({Key? key}) : super(key: key);

  @override
  _LogPageState createState() => _LogPageState();
}

class _LogPageState extends State<LogPage> {
  Option selectedOption = Option.logIn;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // ignore: avoid_print
    print("height: ${size.height} --- width: ${size.width}");

    return Scaffold(
      // ignore: sized_box_for_whitespace
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Row(
              children: [
                Container(
                  height: double.infinity,
                  width: size.width / 2,
                  color: Global.kPrimaryColor,
                ),
                Container(
                  height: double.infinity,
                  width: size.width / 2,
                  color: Colors.white,
                ),
              ],
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(32),
                child: Text(
                  "Welcome",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      "Let's Kick Now !",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "It's easy and takes less than 30 seconds",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Row(
                  children: const <Widget>[
                    Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.white,
                      size: 28,
                    ),
                     SizedBox(
                      width: 8,
                    ),
                     Text(
                      "HOME",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.all(32),
                child: Icon(
                  Icons.menu,
                  color: Color(0xFFFE4350),
                  size: 28,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const <Widget>[
                    Icon(
                      Icons.copyright,
                      color: Colors.grey,
                      size: 24,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Copyright 2020",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 700),
              reverseDuration: const Duration(milliseconds: 700),
              //Animation 1
              // transitionBuilder: (widget, animation) => RotationTransition(
              //   turns: animation,
              //   child: widget,
              // ),
              // switchOutCurve: Curves.easeInOutCubic,
              // switchInCurve: Curves.fastLinearToSlowEaseIn,

              //Animation 2
              transitionBuilder: (Widget widget, Animation<double> animation) =>
                  ScaleTransition(child: widget, scale: animation),

              child: selectedOption == Option.logIn
                  ? LogIn(
                      key: const Key('LogIn'),
                      onSignUpSelected: () {
                        setState(() {
                          selectedOption = Option.signUp;
                        });
                      },
                    )
                  : SignUp(
                      key: const Key('SignUp'),
                      onLogInSelected: () {
                        setState(() {
                          selectedOption = Option.logIn;
                        });
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

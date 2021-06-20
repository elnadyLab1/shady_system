import 'package:flutter/material.dart';
import 'package:flutter_application/utils/index.dart';
import 'package:flutter_application/views/index.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(3, 9, 23, 1),
      // ignore: sized_box_for_whitespace
      body: Container(
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            //
            Positioned(
              top: -50,
              left: 0,
              child: FadeAnimation(
                child: Container(
                  width: width,
                  height: 400,
                  decoration: boxImage(),
                ),
              ),
            ),
            //
            Positioned(
              top: -100,
              left: 0,
              child: FadeAnimation(
                delay: 1.3,
                child: Container(
                  width: width,
                  height: 400,
                  decoration: boxImage(),
                ),
              ),
            ),
            //
            Positioned(
              top: -150,
              left: 0,
              child: FadeAnimation(
                delay: 1.6,
                child: Container(
                  width: width,
                  height: 400,
                  decoration: boxImage(),
                ),
              ),
            ),
            //
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const FadeAnimation(
                    child: Text(
                      "Welcome",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  FadeAnimation(
                    delay: 1.3,
                    child: Text(
                      "We promis that you'll have the most \nfuss-free time with us ever.",
                      style: TextStyle(
                        color: Colors.white.withOpacity(.7),
                        height: 1.4,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 180,
                  ),
                  const FadeAnimation(
                    delay: 1.6,
                    child: AnimatedButton(),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

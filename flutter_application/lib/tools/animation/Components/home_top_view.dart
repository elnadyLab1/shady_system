import 'package:flutter/material.dart';
import 'month_view.dart';
import 'profile_notification.dart';

class ImageBackground extends StatelessWidget {
  final DecorationImage backgroundImage;
  final DecorationImage profileImage;
  final VoidCallback selectbackward;
  final VoidCallback selectforward;
  final String month;
  final Animation<double> containerGrowAnimation;
  const ImageBackground({
    Key? key,
    required this.backgroundImage,
    required this.containerGrowAnimation,
    required this.profileImage,
    required this.month,
    required this.selectbackward,
    required this.selectforward,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    final Orientation orientation = MediaQuery.of(context).orientation;
    bool isLandscape = orientation == Orientation.landscape;
    return Container(
      width: screenSize.width,
      height: screenSize.height / 2.5,
      decoration: BoxDecoration(image: backgroundImage),
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: <Color>[
            Color.fromRGBO(110, 101, 103, 0.6),
            Color.fromRGBO(51, 51, 63, 0.9),
          ],
          stops: [0.2, 1.0],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(0.0, 1.0),
        )),
        child: isLandscape
            ? ListView(
                children: <Widget>[
                  Flex(
                    direction: Axis.vertical,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      const Text(
                        "Good Morning!",
                        style: TextStyle(
                            fontSize: 30.0,
                            letterSpacing: 1.2,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      ProfileNotification(
                        containerGrowAnimation: containerGrowAnimation,
                        profileImage: profileImage,
                      ),
                      MonthView(
                        month: month,
                        selectbackward: selectbackward,
                        selectforward: selectforward,
                      )
                    ],
                  )
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const Text(
                    "Good Morning!",
                    style: TextStyle(
                        fontSize: 30.0,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                  ProfileNotification(
                    containerGrowAnimation: containerGrowAnimation,
                    profileImage: profileImage,
                  ),
                  MonthView(
                    month: month,
                    selectbackward: selectbackward,
                    selectforward: selectforward,
                  )
                ],
              ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final Animation<double> buttonGrowAnimation;
  const AddButton({
    Key? key,
    required this.buttonGrowAnimation,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonGrowAnimation.value * 60,
      height: buttonGrowAnimation.value * 60,
      alignment: FractionalOffset.center,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(247, 64, 106, 1.0),
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.add,
        size: buttonGrowAnimation.value * 40.0,
        color: Colors.white,
      ),
    );
  }
}

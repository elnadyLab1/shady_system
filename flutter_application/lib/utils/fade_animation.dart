import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;
  final int begin;
  final int end;

  const FadeAnimation({
    Key? key,
    this.delay = 1,
    required this.child,
    this.begin = 0,
    this.end = 500,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _tween = TimelineTween<AniProps>()
      ..addScene(
        begin: Duration(microseconds: begin),
        end: Duration(microseconds: end),
      )
          .animate(
            AniProps.opacity,
            tween: Tween(begin: 0.0, end: 1.0),
          )
          .animate(
            AniProps.translateY,
            tween: Tween(begin: -130.0, end: 0.0),
            curve: Curves.easeOut,
          );

    return PlayAnimation<TimelineValue<AniProps>>(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: _tween.duration,
      tween: _tween,
      child: child,
      builder: (context, child, animation) => Opacity(
        opacity: animation.get(AniProps.opacity),
        child: Transform.translate(
          offset: Offset(0, animation.get(AniProps.opacity)),
          child: child,
        ),
      ),
    );
  }
}

enum AniProps { opacity, translateY }

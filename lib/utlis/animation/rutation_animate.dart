import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class rotaion extends CustomTransitionPage {
  final page;
  rotaion(this.page)
      : super(
            child: page,
            transitionsBuilder: (context, animation, animationtwo, child) {
              var b = 0.0;
              var e = 1.0;
              var twen = Tween(begin: b, end: e);
              var curves = CurvedAnimation(
                parent: animation,
                curve: Curves.linear,
              );
              return RotationTransition(
                turns: twen.animate(curves),
                child: ScaleTransition(
                  scale: twen.animate(curves),
                  child: child,
                ),
              );
            },
            transitionDuration: Duration(milliseconds: 550));
}

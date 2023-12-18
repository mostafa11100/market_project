import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class scale extends CustomTransitionPage {
  final page;
  scale(this.page)
      : super(
          child: page,
          transitionsBuilder: (context, animation, animationtwo, child) {
            var begin = 0.0;
            var end = 1.0;
            var twen = Tween(begin: begin, end: end);

            var curves =
                CurvedAnimation(parent: animation, curve: Curves.linear);
            return ScaleTransition(
              alignment: Alignment.center,
              scale: twen.animate(curves),
              child: FadeTransition(
                opacity: animation,
                child: child,
              ),
            );
          },
          transitionDuration: Duration(milliseconds: 1000),
        );
}

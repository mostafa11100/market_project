import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class alignanimation extends CustomTransitionPage {
  final page;
  alignanimation({this.page})
      : super(
            child: page,
            transitionsBuilder: (context, animation, animationtwo, child) {
              return Align(
                child: SizeTransition(
                  child: child,
                  sizeFactor: animation,
                ),
              );
            },
            transitionDuration: Duration(milliseconds: 500));
}

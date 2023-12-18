import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class Slide extends CustomTransitionPage {
  // ignore: prefer_typing_uninitialized_variables
  final page;
  final double x, y;
  int? d;
  Slide({this.page, required this.x, required this.y, this.d = 500})
      : super(
            transitionDuration: Duration(milliseconds: 800!),
            reverseTransitionDuration: Duration(milliseconds: d!),
            child: page,
            transitionsBuilder: (context, animation, animation2, child) {
              Offset beging = Offset(x, y);
              Offset end = const Offset(0, 0);
              var twen = Tween(begin: beging, end: end);
              var offsetanimate = animation.drive(twen);
              return SlideTransition(
                position: offsetanimate,
                child: child,
              );
            });
}

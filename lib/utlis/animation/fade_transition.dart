import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class fade extends CustomTransitionPage {
  final page;
  fade(this.page)
      : super(
            child: page,
            transitionsBuilder: (context, animation, animationtwo, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            reverseTransitionDuration: Duration(milliseconds: 800),
            transitionDuration: Duration(milliseconds: 800));
}

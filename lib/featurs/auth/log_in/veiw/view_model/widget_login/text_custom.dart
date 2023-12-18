import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class custom_text extends StatelessWidget {
  custom_text(
      {super.key,
      this.opacity = 1.0,
      required this.text,
      required this.style,
      this.maxline = 1});
  final int maxline;
  double opacity;
  TextStyle style;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Text(
        maxLines: maxline,
        // textAlign: TextAlign.center,
        text,
        style: style,
      ),
    );
  }
}

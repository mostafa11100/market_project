import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class custom_text_widget extends StatelessWidget {
  custom_text_widget(
      {super.key, this.opacity = 1.0, required this.text, required this.style});
  double opacity;
  TextStyle style;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Text(
        text,
        style: style,
      ),
    );
  }
}

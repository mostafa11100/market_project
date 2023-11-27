import 'package:flutter/material.dart';

class custom_position_circle extends StatelessWidget {
  const custom_position_circle(
      {super.key, required this.left, required this.bottom});
  final double left;
  final double bottom;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: left,
        bottom: MediaQuery.of(context).size.height / 5,
        child: const CircleAvatar(
          backgroundColor: Colors.white,
        ));
  }
}

import 'package:flutter/material.dart';

class custom_right_circle extends StatelessWidget {
  const custom_right_circle({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: -20,
        bottom: MediaQuery.of(context).size.height / 5,
        child: const CircleAvatar(
          backgroundColor: Colors.white,
        ));
  }
}

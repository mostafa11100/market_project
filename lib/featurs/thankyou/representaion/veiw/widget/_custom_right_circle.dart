import 'package:flutter/material.dart';

class CustomRightCircle extends StatelessWidget {
  const CustomRightCircle({super.key});

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

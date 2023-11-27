import 'package:flutter/material.dart';

class custom_image_circle extends StatelessWidget {
  const custom_image_circle({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: MediaQuery.of(context).size.width / 3.1,
        top: -40,
        child: CircleAvatar(
          radius: 40,
          backgroundColor: const Color.fromARGB(207, 216, 215, 215),
          child: Center(
            child: Image.asset(
              "assets/Group 7.png",
              height: 63,
              width: 63,
            ),
          ),
        ));
  }
}

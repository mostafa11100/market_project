import 'package:flutter/material.dart';

class custom_generat_line extends StatelessWidget {
  const custom_generat_line({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20,
      bottom: (MediaQuery.of(context).size.height / 5) + 17,
      child: Row(
        children: List.generate(38, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: Container(
              height: 2,
              width: 3,
              color: Color.fromARGB(249, 184, 184, 184),
            ),
          );
        }),
      ),
    );
  }
}

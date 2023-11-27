import 'package:ecommerca_app/featurs/thankyou/representaion/veiw/widget/_container.dart';
import 'package:ecommerca_app/featurs/thankyou/representaion/veiw/widget/_custom_right_circle.dart';
import 'package:ecommerca_app/featurs/thankyou/representaion/veiw/widget/custom_circle_left.dart';
import 'package:ecommerca_app/featurs/thankyou/representaion/veiw/widget/custom_image_circle.dart';
import 'package:ecommerca_app/featurs/thankyou/representaion/veiw/widget/custom_line_ginerate.dart';
import 'package:ecommerca_app/functions/appbar_custom.dart';
import 'package:flutter/material.dart';

class thank_screan extends StatelessWidget {
  const thank_screan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Transform.translate(
        offset: Offset(0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.arrow_back_ios_outlined),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Stack(clipBehavior: Clip.none, children: [
                const custom_container(),
                custom_position_circle(
                    left: -20, bottom: MediaQuery.of(context).size.height / 2),
                const custom_right_circle(),
                const custom_image_circle(),
                const custom_generat_line()
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

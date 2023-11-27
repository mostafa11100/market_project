// import 'package:ecommerca_app/consts/style_const/color_app.dart';
// import 'package:ecommerca_app/featurs/home_feature/payment_screan/presintation/veiw/widgets_payment/body.dart';
// import 'package:ecommerca_app/functions/appbar_custom.dart';
// import 'package:flutter/material.dart';

// class payment_screan extends StatelessWidget {
//   const payment_screan({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: custom_appbar("Payment Details"),
//         // ignore: prefer_const_constructors
//         body: custom_body());
//   }
// }

import 'package:ecommerca_app/consts/style_const/color_app.dart';
import 'package:flutter/material.dart';

class custom_payment_card extends StatelessWidget {
  custom_payment_card({super.key, this.image, this.state = 0});
  String? image;
  int state;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: AnimatedContainer(
          height: 60,
          width: 100,
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(
              border: Border.all(color: state == 1 ? check_color : Colors.grey),
              borderRadius: BorderRadius.circular(14),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: check_color, blurRadius: state == 1 ? 4 : 0)
              ]),
          child: Center(
            child: Image.asset(image!),
          )),
    );
  }
}

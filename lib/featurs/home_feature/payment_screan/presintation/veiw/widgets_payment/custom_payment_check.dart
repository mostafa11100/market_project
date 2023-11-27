import 'package:ecommerca_app/classes/imageslink.dart';
import 'package:ecommerca_app/featurs/home_feature/payment_screan/presintation/veiw/pay_screan.dart';
import 'package:flutter/material.dart';

class custom_check_payment extends StatefulWidget {
  const custom_check_payment({super.key});

  @override
  State<custom_check_payment> createState() => _custom_check_paymentState();
}

class _custom_check_paymentState extends State<custom_check_payment> {
  int? x1 = 1, x2 = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              x1 = 1;
              x2 = 0;
            });
          },
          child: custom_payment_card(
            state: x1!,
            image: images_link.cardimage,
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              x1 = 0;
              x2 = 1;
            });
          },
          child: custom_payment_card(
            state: x2!,
            image: images_link.paypal,
          ),
        ),
      ],
    );
  }
}

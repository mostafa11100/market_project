import 'package:ecommerca_app/classes/imageslink.dart';
import 'package:ecommerca_app/featurs/landing_badge/payment_screan/presintation/veiw/pay_screan.dart';
import 'package:ecommerca_app/featurs/payment_checkout/presintion/cubit/payment_getaway_choice.dart/cubit/payment_chice_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCheckPayment extends StatefulWidget {
  const CustomCheckPayment({super.key});

  @override
  State<CustomCheckPayment> createState() => CustomCheckPaymentState();
}

class CustomCheckPaymentState extends State<CustomCheckPayment> {
  int? x1 = 1, x2 = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              x1 = 1;
              x2 = 0;
            });
            BlocProvider.of<PaymentChiceCubit>(context).payment_type(1);
          },
          child: custom_payment_card(
            state: x1!,
            image: ImagesLink.cardimage,
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              x1 = 0;
              x2 = 1;
            });
            BlocProvider.of<PaymentChiceCubit>(context).payment_type(2);
          },
          child: custom_payment_card(
            state: x2!,
            image: ImagesLink.paypal,
          ),
        ),
      ],
    );
  }
}

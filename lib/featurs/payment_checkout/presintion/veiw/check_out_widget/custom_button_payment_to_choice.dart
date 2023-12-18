import 'package:ecommerca_app/consts/style_const/color_app.dart';
import 'package:ecommerca_app/featurs/payment_checkout/presintion/veiw/check_out_widget/custom_button_check.dart';
import 'package:ecommerca_app/featurs/payment_checkout/presintion/veiw/check_out_widget/model_sheet_choice_paymentgitaway.dart';
import 'package:flutter/material.dart';

class CustomButtonPaymentToChoice extends StatelessWidget {
  const CustomButtonPaymentToChoice({super.key});

  @override
  Widget build(BuildContext context) {
    return custom_button_check(
      height: 55.0,
      ontop: () {
        showModalBottomSheet(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            context: context,
            builder: (context) {
              return const ModelsheetPaymentchoace();
            });
        // GoRouter.of(context).push("/payment_screan");
      },
      text: "Complete Payment",
      textcolor: Colors.black,
      color: check_color,
    );
  }
}

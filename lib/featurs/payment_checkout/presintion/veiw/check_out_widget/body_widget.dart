import 'package:ecommerca_app/featurs/payment_checkout/data/check_outdata_model/check_out_model.dart';
import 'package:ecommerca_app/featurs/payment_checkout/presintion/veiw/check_out_widget/custom_button_payment_to_choice.dart';
import 'package:ecommerca_app/featurs/payment_checkout/presintion/veiw/check_out_widget/order_inf.dart';
import 'package:ecommerca_app/featurs/payment_checkout/presintion/veiw/check_out_widget/total_info.dart';
import 'package:flutter/material.dart';

class BodyCheckout extends StatelessWidget {
  const BodyCheckout({super.key, required this.checkmodel});
  final CheckOutModel checkmodel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          // margin: EdgeInsets.only(top: ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(
                  "assets/Group 7.jpg",
                  height: 380,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              order_info(
                text1: 'Order Subtotal',
                text2: "\$${checkmodel.subtotal.toString()}",
              ),
              const SizedBox(
                height: 8,
              ),
              order_info(
                text1: 'Discount',
                text2: "\$${checkmodel.discount.toString()}",
              ),
              const SizedBox(
                height: 8,
              ),
              order_info(
                text1: 'Shipping',
                text2: "\$${checkmodel.shiping.toString()}",
              ),
              const Divider(
                height: 30,
                color: Color.fromRGBO(217, 217, 217, 1),
                thickness: 2,
              ),
              custom_row_info(
                  text1: "Total", text2: "\$${checkmodel.total.toString()}"),
              const SizedBox(
                height: 8,
              ),
              const CustomButtonPaymentToChoice(),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

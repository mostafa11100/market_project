import 'dart:developer';

import 'package:ecommerca_app/classes/paypal_pramitars.dart';
import 'package:ecommerca_app/consts/style_const/color_app.dart';
import 'package:ecommerca_app/featurs/payment_checkout/data/paypal_pramitar_model.dart/all_model_pr.dart';
import 'package:ecommerca_app/featurs/payment_checkout/data/paypal_pramitar_model.dart/amount_pr_model/amount_prmodel/amount_prmodel.dart';
import 'package:ecommerca_app/featurs/payment_checkout/data/paypal_pramitar_model.dart/amount_pr_model/amount_prmodel/details.dart';
import 'package:ecommerca_app/featurs/payment_checkout/data/paypal_pramitar_model.dart/itemlist_pr_model/item.dart';
import 'package:ecommerca_app/featurs/payment_checkout/data/paypal_pramitar_model.dart/itemlist_pr_model/item_list.dart';
import 'package:ecommerca_app/featurs/payment_checkout/presintion/veiw/check_out_widget/custom_button_check.dart';
import 'package:flutter/material.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:go_router/go_router.dart';

// ignore: camel_case_types, must_be_immutable
class paypal_checkout_button extends StatelessWidget {
  AmountPrmodel? amount_model2;
  paypal_checkout_button({super.key});
  ItemList? list;
  Item? item;

  @override
  Widget build(BuildContext context) {
    return custom_button_check(
      ontop: () {
        amount_model2 = AmountPrmodel(
            total: "100",
            currency: "USD",
            details:
                Details(shipping: "0", subtotal: "100", shippingDiscount: 0));

        context.go('/paypal_screan_webview',
            extra: all_pr_model(
                list: ItemList(items: [
                  Item(
                      name: "apple",
                      currency: "USD",
                      price: "100",
                      quantity: 1)!
                ])!,
                amount_model2: amount_model2!,
                id: paypal_pr.clintid,
                secret: paypal_pr.secret));
      },
      text: "Continue",
      color: check_color,
      width: 300,
      height: 50.0,
      textcolor: Colors.black,
    );
  }
}

// ignore: camel_case_types
class paypal_screan_webview extends StatelessWidget {
  const paypal_screan_webview(
      // ignore: non_constant_identifier_names
      {
    super.key,
    required this.allmodel,
  });
  // final String id;
  // final String secret;
  // final AmountPrmodel amount_model;
  // final ItemList item_list;
  final all_pr_model allmodel;
  @override
  Widget build(BuildContext context) {
    print(allmodel.amount_model2.toJson());

    return Container();
  }
}


// PaypalCheckoutView(
//       sandboxMode: true,
//       clientId: allmodel.id,
//       secretKey: allmodel.secret,
//       transactions: [
//         {
//           "amount": allmodel.amount_model2.toJson(),
//           "description": "The payment transaction description.",
//           "item_list": allmodel.list.toJson()
//         }
//       ],
//       note: "Contact us for any questions on your order.",
//       onSuccess: (Map params) async {
//         print("onSuccess: $params");
//         context.go('/thank_screan');
//       },
//       onError: (error) {
//         print("onError: $error");
//         // Navigator.pop(context);
//       },
//       onCancel: () {
//         print('cancelled:');
//         Navigator.pop(context);
//       },
//     );

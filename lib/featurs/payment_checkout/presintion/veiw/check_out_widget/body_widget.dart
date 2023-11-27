// import 'package:ecommerca_app/consts/style_const/color_app.dart';
// import 'package:ecommerca_app/featurs/home_feature/payment_screan/presintation/veiw/widgets_payment/custom_payment_check.dart';
// import 'package:ecommerca_app/featurs/payment_checkout/presintion/veiw/check_out_widget/custom_button_check.dart';
// import 'package:ecommerca_app/featurs/payment_checkout/presintion/veiw/check_out_widget/custom_button_payment_to_choice.dart';
// import 'package:ecommerca_app/featurs/payment_checkout/presintion/veiw/check_out_widget/model_sheet_choice_paymentgitaway.dart';
// import 'package:ecommerca_app/featurs/payment_checkout/presintion/veiw/check_out_widget/order_inf.dart';
// import 'package:ecommerca_app/featurs/payment_checkout/presintion/veiw/check_out_widget/total_info.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// class body_checkout extends StatelessWidget {
//   const body_checkout({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Container(
//           width: MediaQuery.of(context).size.width,
//           // margin: EdgeInsets.only(top: ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Expanded(
//                 child: Image.asset(
//                   "assets/Group 7.jpg",
//                   height: 380,
//                   width: MediaQuery.of(context).size.width,
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               const order_info(
//                 text1: 'Order Subtotal',
//                 text2: r'$42.97',
//               ),
//               const SizedBox(
//                 height: 8,
//               ),
//               const order_info(
//                 text1: 'Discount',
//                 text2: r'$0',
//               ),
//               const SizedBox(
//                 height: 8,
//               ),
//               const order_info(
//                 text1: 'Shipping',
//                 text2: r'$8',
//               ),
//               const Divider(
//                 height: 30,
//                 color: Color.fromRGBO(217, 217, 217, 1),
//                 thickness: 2,
//               ),
//               custom_row_info(text1: "Total", text2: r"$50.97"),
//               const SizedBox(
//                 height: 8,
//               ),
//               custom_button_payment_to_choice(),
//               const SizedBox(
//                 height: 30,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

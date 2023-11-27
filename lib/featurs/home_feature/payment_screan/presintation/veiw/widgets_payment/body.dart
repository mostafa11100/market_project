// import 'package:ecommerca_app/featurs/home_feature/payment_screan/presintation/veiw/widgets_payment/custom_payment_check.dart';
// import 'package:ecommerca_app/featurs/payment_checkout/presintion/veiw/check_out_widget/custom_button_check.dart';
// import 'package:ecommerca_app/functions/validatcheck.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// class custom_body extends StatefulWidget {
//   const custom_body({super.key});

//   @override
//   State<custom_body> createState() => _custom_bodyState();
// }

// class _custom_bodyState extends State<custom_body> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: const EdgeInsets.all(10),
//         child: Column(
//           children: [
//             custom_check_payment(),
//             const SizedBox(
//               height: 20,
//             ),
//             Expanded(child: creditcardwidget())
//           ],
//         ));
//   }
// }

// class creditcardwidget extends StatefulWidget {
//   creditcardwidget({super.key});
//   String? cardNumber = "",
//       expiryDate = "",
//       cardHolderName = "",
//       cvvCode = "",
//       onCreditCardWidgetChange;
//   bool showBackView = false;

//   @override
//   State<creditcardwidget> createState() => _creditcardwidgetState();
// }

// class _creditcardwidgetState extends State<creditcardwidget> {
//   GlobalKey<FormState> formkey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ListView(children: [
//         Column(
//           children: [
//             CreditCardWidget(
//                 cardNumber: widget.cardNumber!,
//                 expiryDate: widget.expiryDate!,
//                 cardHolderName: widget.cardHolderName!,
//                 cvvCode: widget.cvvCode!,
//                 showBackView: widget.showBackView,
//                 onCreditCardWidgetChange: (v) {}),
//             CreditCardForm(
//               cardNumber: '',
//               expiryDate: '',
//               cardHolderName: '',
//               cvvCode: '',
//               onCreditCardModelChange: (CreditCardModel) {
//                 widget.cardNumber = CreditCardModel.cardNumber;
//                 widget.expiryDate = CreditCardModel.expiryDate;
//                 widget.cardHolderName = CreditCardModel.cardHolderName;
//                 widget.cvvCode = CreditCardModel.cvvCode;
//                 widget.showBackView = CreditCardModel.isCvvFocused;
//                 setState(() {});
//               },
//               formKey: formkey,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: custom_button_check(
//                 ontop: () {
//                   if (keyform_state(formkey)) {
//                     GoRouter.of(context).push("/thank_screan");
//                   }
//                 },
//                 text: "Pay",
//                 height: 55.0,
//                 textcolor: Colors.black,
//               ),
//             ),
//           ],
//         ),
//       ]),
//     );
//   }
// }

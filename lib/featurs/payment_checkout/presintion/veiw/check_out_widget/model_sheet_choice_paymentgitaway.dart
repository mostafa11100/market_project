// import 'package:ecommerca_app/consts/style_const/color_app.dart';
// import 'package:ecommerca_app/consts/style_const/textstyle.dart';
// import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
// import 'package:ecommerca_app/featurs/home_feature/payment_screan/presintation/veiw/widgets_payment/custom_payment_check.dart';
// import 'package:ecommerca_app/featurs/payment_checkout/data/paymentinit_model/model_payment_prametar.dart';
// import 'package:ecommerca_app/featurs/payment_checkout/presintion/cubit/cubit/payment_cubot_cubit.dart';
// import 'package:ecommerca_app/featurs/payment_checkout/presintion/veiw/check_out_widget/custom_button_check.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';

// class modelsheet_paymentchoace extends StatelessWidget {
//   const modelsheet_paymentchoace({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
//       child: Container(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             custom_check_payment(),
//             const SizedBox(
//               height: 20,
//             ),
//             BlocConsumer<PaymentCubot, PaymentCubotState>(
//               listener: (context, state) {
//                 if (state is PaymentCubotsuccess) {
//                   GoRouter.of(context).pushReplacementNamed("/thank_screan");
//                 } else if (state is PaymentCubotfail) {
//                   GoRouter.of(context).pop();
//                   SnackBar(
//                       backgroundColor: Colors.black,
//                       content: custom_text(
//                           text: state.error!,
//                           style: text_style.textstyle16
//                               .copyWith(color: Colors.white)));
//                 }
//               },
//               builder: (context, state) {
//                 if (state is PaymentCubotloading) {
//                   return CircularProgressIndicator();
//                 }

//                 return custom_button_check(
//                   ontop: () {
//                     BlocProvider.of<PaymentCubot>(context).checkout(
//                         model: paymentinit_model_prametar(
//                             amount: "1000", eccurance: "usd"));
//                   },
//                   text: "Continue",
//                   color: check_color,
//                   width: 300,
//                   height: 50.0,
//                   textcolor: Colors.black,
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

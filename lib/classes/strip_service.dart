// import 'package:dio/dio.dart';
// import 'package:ecommerca_app/classes/api_service.dart';
// import 'package:ecommerca_app/classes/token_strip.dart';
// import 'package:ecommerca_app/consts/api_link.dart';
// import 'package:ecommerca_app/featurs/payment_checkout/data/paymentinit_model/model_payment_prametar.dart';
// import 'package:ecommerca_app/featurs/payment_checkout/data/paymentinit_model/paymentinit_model.dart';
// import 'package:flutter_stripe/flutter_stripe.dart';

// class stripe_service {
//   Future<PaymentinitModel> paymentinit(
//       {required paymentinit_model_prametar body}) async {
//     Response resp =
//         await api_dio(url: url_strip, body: body.tojson(), token: token_strip);
//     return PaymentinitModel.fromJson(resp.data);
//   }

//   // ignore: non_constant_identifier_names
//   Future<void> init_payment_sheet(paymentIntent) async {
//     await Stripe.instance.initPaymentSheet(
//         paymentSheetParameters: SetupPaymentSheetParameters(
//             merchantDisplayName: "mostafa_salem",
//             paymentIntentClientSecret: paymentIntent));
//   }

//   // ignore: non_constant_identifier_names
//   Future presentpayment_sheet() async {
//     await Stripe.instance.presentPaymentSheet();
//   }

//   Future payment_operation(body) async {
//     PaymentinitModel res = await paymentinit(body: body);
//     await init_payment_sheet(res.clientSecret);
//     await presentpayment_sheet();
//   }
// }

// import 'package:dartz/dartz.dart';
// import 'package:ecommerca_app/classes/strip_service.dart';
// import 'package:ecommerca_app/featurs/payment_checkout/data/paymentinit_model/model_payment_prametar.dart';
// import 'package:ecommerca_app/featurs/payment_checkout/data/repo/repo_strip.dart';

// class repo_imp extends repo_strip {
//   @override
//   Future<Either<fail, void>> createpayment(
//       {required paymentinit_model_prametar model}) async {
//     stripe_service service = stripe_service();
//     try {
//       await service.payment_operation(model);
//       return right(null);
//     } catch (e) {
//       return left(serverfail(e.toString()));
//     }
//   }
// }

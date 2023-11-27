// import 'package:bloc/bloc.dart';
// import 'package:dartz/dartz.dart';
// import 'package:ecommerca_app/featurs/payment_checkout/data/paymentinit_model/model_payment_prametar.dart';
// import 'package:ecommerca_app/featurs/payment_checkout/data/repo/repo_imp.dart';
// import 'package:ecommerca_app/featurs/payment_checkout/data/repo/repo_strip.dart';
// part 'payment_cubot_state.dart';

// class PaymentCubot extends Cubit<PaymentCubotState> {
//   PaymentCubot(this.repo) : super(PaymentCubotInitial());
//   repo_imp repo;
//   void checkout({required paymentinit_model_prametar model}) async {
//     emit(PaymentCubotloading());
//     Either<fail, void> res = await repo.createpayment(model: model);
//     res.fold((error) {
//       emit(PaymentCubotfail(error.error));
//     }, (r) => null);
//   }
// }

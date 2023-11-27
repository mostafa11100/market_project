import 'package:dartz/dartz.dart';
import 'package:ecommerca_app/featurs/payment_checkout/data/paymentinit_model/model_payment_prametar.dart';

abstract class repo_strip {
  Future<Either<fail, void>> createpayment(
      {required paymentinit_model_prametar model});
}

abstract class fail {
  String? error;
  fail(this.error);
}

class serverfail extends fail {
  serverfail(super.error);
}

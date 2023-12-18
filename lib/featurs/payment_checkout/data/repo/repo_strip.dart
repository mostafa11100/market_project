import 'package:dartz/dartz.dart';
import 'package:ecommerca_app/featurs/payment_checkout/data/paymentinit_model/model_payment_prametar.dart';

abstract class repo_strip {
  Future<Either<Fil, void>> createpayment(
      {required PaymentinitModelPrametar model, required String id});
}

abstract class Fil {
  String? error;
  Fil(this.error);
}

class Serverfail extends Fil {
  Serverfail(super.error);
}

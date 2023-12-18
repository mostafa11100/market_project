import 'package:dartz/dartz.dart';
import 'package:ecommerca_app/classes/strip_service.dart';
import 'package:ecommerca_app/featurs/payment_checkout/data/paymentinit_model/model_payment_prametar.dart';
import 'package:ecommerca_app/featurs/payment_checkout/data/repo/repo_strip.dart';

// ignore: camel_case_types
class repo_imp extends repo_strip {
  @override
  Future<Either<Fil, void>> createpayment(
      {required PaymentinitModelPrametar model, required String id}) async {
    StripeService service = StripeService();
    try {
      await service.payment_operation(body: model, id: id);
      return right(null);
    } catch (e) {
      return left(Serverfail(e.toString()));
    }
  }
}

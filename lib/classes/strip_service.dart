import 'package:dio/dio.dart';
import 'package:ecommerca_app/classes/api_service.dart';
import 'package:ecommerca_app/classes/stripe_prametar.dart';
import 'package:ecommerca_app/consts/api_link.dart';
import 'package:ecommerca_app/featurs/payment_checkout/data/eph_key_model.dart/ephemiral_key_model/ephemiral_key_model.dart';
import 'package:ecommerca_app/featurs/payment_checkout/data/paymentinit_model/model_payment_prametar.dart';
import 'package:ecommerca_app/featurs/payment_checkout/data/paymentinit_model/paymentinit_model.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeService {
  Future<PaymentinitModel?> paymentinit(
      {required PaymentinitModelPrametar body}) async {
    try {
      Response? resp = await apiDio(
          url: url_strip,
          body: body.tojson(),
          header: {
            "Authorization": "Bearer $tokenStrip",
          },
          contenttype: "application/x-www-form-urlencoded");

      return PaymentinitModel.fromJson(resp!.data);
    } catch (e) {
      return null;
    }
  }

  Future<EphemiralKeyModel?> GetEphemeralKeys(
      // ignore: non_constant_identifier_names
      {required String customr_id}) async {
    try {
      Response? resp = await apiDio(
        url: url_eph_key,
        body: {'customer': customr_id},
        contenttype: contentType,
        header: {
          "Authorization": "Bearer $tokenStrip",
          "Stripe-Version": stripVersion
        },
      );

      return EphemiralKeyModel.fromJson(resp!.data);
    } catch (e) {
      return null;
    }
  }

  // ignore: non_constant_identifier_names
  Future<void> init_payment_sheet(
      {required paymentIntent,
      required EphemiralKeyModel secret,
      required customrid}) async {
    try {
      await Stripe.instance.initPaymentSheet(
          paymentSheetParameters: SetupPaymentSheetParameters(
              customerEphemeralKeySecret: secret.secret,
              customerId: customrid,
              merchantDisplayName: "mostafa_salem",
              paymentIntentClientSecret: paymentIntent.toString()));
      // ignore: empty_catches
    } catch (e) {}
  }

  // ignore: non_constant_identifier_names
  Future presentpayment_sheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  // ignore: non_constant_identifier_names
  Future payment_operation({required body, required id}) async {
    EphemiralKeyModel? ephmodel = await GetEphemeralKeys(customr_id: id);

    PaymentinitModel? res = await paymentinit(body: body);

    await init_payment_sheet(
      secret: ephmodel!,
      customrid: id,
      paymentIntent: res!.clientSecret,
    );

    await presentpayment_sheet();
  }
}

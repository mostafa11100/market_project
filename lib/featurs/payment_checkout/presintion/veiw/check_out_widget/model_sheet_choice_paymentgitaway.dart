import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:ecommerca_app/featurs/payment_checkout/presintion/veiw/check_out_widget/custom_payment_check.dart';
import 'package:ecommerca_app/featurs/payment_checkout/data/repo/repo_imp.dart';
import 'package:ecommerca_app/featurs/payment_checkout/presintion/cubit/cubit/payment_cubot_cubit.dart';
import 'package:ecommerca_app/featurs/payment_checkout/presintion/cubit/payment_getaway_choice.dart/cubit/payment_chice_cubit.dart';

import 'package:ecommerca_app/featurs/payment_checkout/presintion/veiw/check_out_widget/paypal_checkout_button.dart';
import 'package:ecommerca_app/featurs/payment_checkout/presintion/veiw/check_out_widget/struip_checkut_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ModelsheetPaymentchoace extends StatelessWidget {
  const ModelsheetPaymentchoace({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => PaymentCubot(repo_imp()),
            ),
            BlocProvider(
              create: (context) => PaymentChiceCubit(),
            ),
          ],
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CustomCheckPayment(),
              const SizedBox(
                height: 20,
              ),
              BlocBuilder<PaymentChiceCubit, PaymentChiceState>(
                builder: (context, state) {
                  if (state is PaymentChice_done) {
                    if (state.type1 == 2) {
                      return paypal_checkout_button();
                    }
                  }
                  return const StripCheckoutButton();
                },
              )
            ],
          ),
        ));
  }
}

SnackBar snakpar(error) {
  return SnackBar(
      backgroundColor: Colors.black,
      content: custom_text(
          text: error!,
          style: text_style.textstyle16.copyWith(color: Colors.white)));
}

import 'package:ecommerca_app/classes/stripe_prametar.dart';
import 'package:ecommerca_app/consts/style_const/color_app.dart';
import 'package:ecommerca_app/featurs/payment_checkout/data/paymentinit_model/model_payment_prametar.dart';
import 'package:ecommerca_app/featurs/payment_checkout/presintion/cubit/cubit/payment_cubot_cubit.dart';
import 'package:ecommerca_app/featurs/payment_checkout/presintion/veiw/check_out_widget/custom_button_check.dart';
import 'package:ecommerca_app/featurs/payment_checkout/presintion/veiw/check_out_widget/model_sheet_choice_paymentgitaway.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class StripCheckoutButton extends StatelessWidget {
  const StripCheckoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubot, PaymentCubotState>(
      listener: (context, state) {
        if (state is PaymentCubotsuccess) {
          GoRouter.of(context).pop();
          GoRouter.of(context).push("/thank_screan");
        } else if (state is PaymentCubotfail) {
          GoRouter.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(snakpar(state.error));
        }
      },
      builder: (context, state) {
        if (state is PaymentCubotloading) {
          return const CircularProgressIndicator();
        }

        return custom_button_check(
          ontop: () {
            BlocProvider.of<PaymentCubot>(context).checkout(
                model: PaymentinitModelPrametar(
                    customrid: customrId, amount: "1000", eccurance: "usd"));
          },
          text: "Continue",
          color: check_color,
          width: 300,
          height: 50.0,
          textcolor: Colors.black,
        );
      },
    );
  }
}

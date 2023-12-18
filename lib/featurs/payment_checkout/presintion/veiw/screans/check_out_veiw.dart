import 'package:ecommerca_app/featurs/cart/veiw/cubit/cubit/total_cubit.dart';
import 'package:ecommerca_app/featurs/payment_checkout/data/check_outdata_model/check_out_model.dart';
import 'package:flutter/material.dart';

import 'package:ecommerca_app/featurs/payment_checkout/presintion/veiw/check_out_widget/body_widget.dart';
import 'package:ecommerca_app/utlis/appbar_custom.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckOutveiw extends StatelessWidget {
  const CheckOutveiw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar("My Cart"),
      body: BlocBuilder<TotalCubit, TotalState>(
        builder: (context, state) {
          if (state is Totalsucces) {
            return BodyCheckout(
              checkmodel: CheckOutModel(
                  discount: 0,
                  shiping: 0,
                  subtotal: state.total,
                  total: state.total),
            );
          } else {
            return Scaffold(
              body: Center(
                child: Text("error ${state.message}"),
              ),
            );
          }
        },
      ),
    );
  }
}

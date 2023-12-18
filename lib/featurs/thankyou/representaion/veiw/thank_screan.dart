import 'package:ecommerca_app/approuter.dart';
import 'package:ecommerca_app/consts/style_const/color_app.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/custom_btton.dart';
import 'package:ecommerca_app/featurs/auth/verifyh_email/veiw/veiw_model/widget_verify/buton_state.dart';
import 'package:ecommerca_app/featurs/cart/veiw/cubit/cubit/total_cubit.dart';
import 'package:ecommerca_app/featurs/thankyou/representaion/veiw/widget/thank_screen_body_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ThankScrean extends StatelessWidget {
  const ThankScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Transform.translate(
        offset: const Offset(0, 0),
        child: BlocBuilder<TotalCubit, TotalState>(
          builder: (context, state) {
            if (state is Totalloading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is Totalfaluir) {
              return Column(
                children: [
                  const Center(
                    child: Text(
                      "error",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  custom_button(
                    ontop: () {
                      context.pushReplacement(AppRouter.homee);
                    },
                    text: "back home",
                    color: primary_color,
                    height: 70,
                    width: 150,
                  )
                ],
              );
            }
            return ThanScreenkBody(
              total: state.total.toString(),
            );
          },
        ),
      ),
    );
  }
}

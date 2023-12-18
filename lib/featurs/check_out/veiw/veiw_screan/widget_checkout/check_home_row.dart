import 'package:ecommerca_app/approuter.dart';
import 'package:ecommerca_app/classes/refrance.dart';
import 'package:ecommerca_app/consts/style_const/color_app.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/custom_btton.dart';
import 'package:ecommerca_app/featurs/check_out/data/model_delivery/address_model.dart';
import 'package:ecommerca_app/featurs/check_out/veiw/cubit/cubit/check_out_cubit.dart';
import 'package:ecommerca_app/functions/animate_to.dart';
import 'package:ecommerca_app/functions/validatcheck.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class RowButon extends StatelessWidget {
  RowButon(
      {super.key,
      required this.controlle,
      required this.ref,
      this.kay,
      required this.streat1,
      required this.streat2,
      required this.city,
      required this.state,
      required this.country,
      this.timeorder});
  final ScrollController controlle;
  final Refrance ref;
  final kay;

  final TextEditingController streat1;
  final TextEditingController streat2;
  final TextEditingController city;
  final TextEditingController state;
  final TextEditingController country;
  final timeorder;

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          custom_button(
            ontop: () {
              if (controlle.position.pixels == 0) {
                GoRouter.of(context).pop();
              }
              animatto2(index, controlle, context);
            },
            textcolor: Colors.black,
            color: Colors.white,
            text: "Back",
            width: 100.0,
          ),
          const SizedBox(
            width: 20,
          ),
          BlocListener<CheckOutCubit, CheckOutState>(
              listener: (BuildContext context, CheckOutState state) {
                if (state is CheckOutsuccess) {
                  GoRouter.of(context).push(AppRouter.checkoutveiw);
                }
              },
              child: custom_button(
                ontop: () {
                  if (controlle.position.pixels ==
                      MediaQuery.of(context).size.width) {
                    BlocProvider.of<CheckOutCubit>(context).add(
                        address.tojson(streat1.text, streat2.text, city.text,
                            state.text, country.text),
                        timeorder);
                  } else {
                    if (keyform_state(kay) || controlle.position.pixels <= 0) {
                      animatto(controlle, index, context, key);
                    }
                  }
                },
                color: primary_color,
                text: "Next",
                width: 100.0,
              )),
        ],
      ),
    );
  }

  Widget _custom_b(context) {
    return custom_button(
      ontop: () {
        if (controlle.position.pixels ==
            2 * MediaQuery.of(context).size.width) {
          BlocProvider.of<CheckOutCubit>(context).add(
              address.tojson(streat1.text, streat2.text, city.text, state.text,
                  country.text),
              timeorder);
        } else {
          if (keyform_state(kay) || controlle.position.pixels <= 0) {
            animatto(controlle, index, context, key);
          }
        }
      },
      color: primary_color,
      text: "Next",
      width: 100.0,
    );
  }
}

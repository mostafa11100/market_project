// ignore_for_file: must_be_immutable

import 'package:ecommerca_app/classes/refrance.dart';
import 'package:ecommerca_app/consts/style_const/color_app.dart';
import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/custom_btton.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:ecommerca_app/featurs/check_out/data/model_delivery/address_model.dart';
import 'package:ecommerca_app/featurs/check_out/data/repo/repof_ad.dart';
import 'package:ecommerca_app/featurs/check_out/veiw/cubit/cubit/check_out_cubit.dart';
import 'package:ecommerca_app/featurs/check_out/veiw/veiw_screan/check_out_screan/addres.dart';
import 'package:ecommerca_app/featurs/check_out/veiw/veiw_screan/check_out_screan/checkout_.dart';
import 'package:ecommerca_app/featurs/check_out/veiw/veiw_screan/check_out_screan/sumary_screan.dart';
import 'package:ecommerca_app/functions/validatcheck.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../functions/animate_to.dart';

// ignore: camel_case_types,
class check_home extends StatelessWidget {
  check_home({super.key});
  ScrollController controlle = ScrollController();
  TextEditingController streat1 = TextEditingController();
  TextEditingController streat2 = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController country = TextEditingController();
  final GlobalKey<FormState>? kay = GlobalKey<FormState>();
  double index = 0.0;
  refrance<String>? radio = refrance<String>("");
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CheckOutCubit(repo_check_imp_add()),
        child: Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              children: [
                const SizedBox(
                  height: 60,
                ),
                Align(
                    alignment: Alignment.center,
                    child: custom_text(
                        text: "Check Out", style: text_style.textstyle20)),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 550,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    controller: controlle,
                    children: [
                      check_timedelivery(ref: radio!),
                      addres_screan(
                        kay: kay!,
                        streat1: streat1,
                        streat2: streat2,
                        city: city,
                        state: state,
                        country: country,
                      ),
                      summary_screan(
                        streat1: streat1,
                        streat2: streat2,
                        city: city,
                        state: state,
                        country: country,
                      ),
                    ],
                  ),
                ),
                row_buton(
                  kay: kay,
                  ref: radio!,
                  timeorder: radio!.value!,
                  controlle: controlle,
                  streat1: streat1,
                  streat2: streat2,
                  city: city,
                  state: state,
                  country: country,
                )
              ],
            ),
          ),
        ));
  }
}

// ignore: camel_case_types
class row_buton extends StatelessWidget {
  row_buton(
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
  final refrance ref;
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
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          custom_button(
            ontop: () {
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
                  print("success");
                }
              },
              child: custom_button(
                ontop: () {
                  if (controlle.position.pixels ==
                      2 * MediaQuery.of(context).size.width) {
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

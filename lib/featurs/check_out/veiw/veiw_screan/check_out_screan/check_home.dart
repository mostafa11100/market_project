// ignore_for_file: must_be_immutable

import 'package:ecommerca_app/approuter.dart';
import 'package:ecommerca_app/classes/refrance.dart';
import 'package:ecommerca_app/consts/style_const/color_app.dart';
import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/custom_btton.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:ecommerca_app/featurs/check_out/data/repo/repof_ad.dart';
import 'package:ecommerca_app/featurs/check_out/veiw/cubit/cubit/check_out_cubit.dart';
import 'package:ecommerca_app/featurs/check_out/veiw/veiw_screan/check_out_screan/addres.dart';
import 'package:ecommerca_app/featurs/check_out/veiw/veiw_screan/check_out_screan/checkout_.dart';
import 'package:ecommerca_app/featurs/check_out/veiw/veiw_screan/widget_checkout/check_home_row.dart';
import 'package:ecommerca_app/functions/validatcheck.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../functions/animate_to.dart';
import '../../../data/model_delivery/address_model.dart';

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
  Refrance<String>? radio = Refrance<String>("");
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CheckOutCubit(repo_check_imp_add()),
        child: Scaffold(
          body: SizedBox(
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
                    ],
                  ),
                ),
                RowButon(
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

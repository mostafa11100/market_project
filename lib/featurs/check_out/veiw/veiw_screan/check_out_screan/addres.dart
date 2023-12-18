// ignore_for_file: camel_case_types, must_be_immutable, prefer_typing_uninitialized_variables, sized_box_for_whitespace

import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/custom_feild.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:flutter/material.dart';

class addres_screan extends StatelessWidget {
  const addres_screan(
      {super.key,
      required this.streat1,
      required this.streat2,
      required this.city,
      required this.state,
      required this.country,
      required this.kay});
  final GlobalKey<FormState> kay;
  final TextEditingController streat1;
  final TextEditingController streat2;
  final TextEditingController city;
  final TextEditingController state;
  final TextEditingController country;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Form(
        key: kay,
        child: Column(
          children: [
            custom_text(
                text: "Billing address is same as delivery address",
                style: text_style.textstyle17),
            const SizedBox(
              height: 30,
            ),
            column_feild(
              controlle: streat1,
              text1: "streat 1",
              text2: "21, Alex Devidson Avenue",
              h: 100.0,
              w: MediaQuery.of(context).size.width,
            ),
            const SizedBox(
              height: 30,
            ),
            column_feild(
              h: 100.0,
              w: MediaQuery.of(context).size.width,
              controlle: streat2,
              text1: "streat 2",
              text2: "Oposite Omegratin,Vecint Quantr",
            ),
            const SizedBox(
              height: 30,
            ),
            column_feild(
              h: 100.0,
              w: MediaQuery.of(context).size.width,
              controlle: city,
              text1: "city",
              text2: "Vectoria island",
            ),
            const Spacer(),
            Row(
              children: [
                column_feild(
                  h: 100.0,
                  w: (MediaQuery.of(context).size.width - 30) / 2.0,
                  controlle: state,
                  text1: "state",
                  text2: "logis state",
                ),
                const SizedBox(
                  width: 10,
                ),
                column_feild(
                  h: 100.0,
                  w: (MediaQuery.of(context).size.width - 30) / 2.0,
                  controlle: country,
                  text1: "Country",
                  text2: "Negirai",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class column_feild extends StatelessWidget {
  const column_feild(
      {super.key,
      this.text1,
      this.text2,
      required this.controlle,
      required this.h,
      required this.w});
  final text1, text2;
  final double h;
  final double w;
  final TextEditingController controlle;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: h,
      width: w,
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: custom_text(
                  opacity: .6, text: text1, style: text_style.textstyle16)),
          custom_feild(
            st: true,
            controlle: controlle,
            hinttext: text2,
            validator: (text) {
              if (text!.isEmpty) {
                return "can't be emptye";
              }
              return null;
            },
          )
        ],
      ),
    );
  }
}
//
//

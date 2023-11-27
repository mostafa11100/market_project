import 'package:ecommerca_app/approuter.dart';
import 'package:ecommerca_app/consts/style_const/color_app.dart';
import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:ecommerca_app/featurs/auth/forget_pasword/veiw/cubit/forget_pasword_cubit.dart';
import 'package:ecommerca_app/featurs/auth/forget_pasword/veiw/veiw_model/widget_forget/custom_button_st.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/custom_feild.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/custom_text_buttton.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:ecommerca_app/functions/validat.dart';
import 'package:ecommerca_app/functions/validatcheck.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable, camel_case_types
class verify_pasword extends StatelessWidget {
  verify_pasword({
    super.key,
  });
  final TextEditingController control = TextEditingController();
  // ignore: non_constant_identifier_names
  GlobalKey<FormState> KeyForm2 = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 100.0, left: 40, right: 40),
      child: SizedBox(
        height: double.infinity,
        child: ListView(children: [
          Column(
            children: [
              custom_text(
                  text: "Verify Pasword", style: text_style.textstyle33),
              const SizedBox(
                height: 100,
              ),
              Center(
                child: Form(
                  onChanged: () {
                    keyform_state(KeyForm2);
                  },
                  key: KeyForm2,
                  child: custom_feild(
                    st: true,
                    controlle: control,
                    validator: validator,
                    hinttext: "Enter Email",
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              custom_button_stat(
                width: 150.0,
                controlemail: control,
                ontop: () {
                  if (keyform_state(KeyForm2)) {
                    BlocProvider.of<ForgetPaswordCubit>(context)
                        .sendpasword(control.text);
                  }
                },
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  custom_text(text: "go to", style: text_style.textstyle16),
                  custom_text_button(
                    ontap: () {
                      GoRouter.of(context).pushReplacement(approuter.log_in);
                    },
                    text: "Sign In",
                    style:
                        text_style.textstyle18.copyWith(color: primary_color),
                    color: primary_color,
                  )
                ],
              ),
            ],
          ),
        ]),
      ),
    ));
  }
}

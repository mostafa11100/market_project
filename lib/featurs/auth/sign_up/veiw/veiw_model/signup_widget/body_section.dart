import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/column_feild.dart';

import 'package:ecommerca_app/featurs/auth/sign_up/veiw/cupit/cubit/sign_up_cubit.dart';
import 'package:ecommerca_app/featurs/auth/sign_up/veiw/veiw_model/signup_widget/custom_s_button.dart';
import 'package:ecommerca_app/featurs/auth/sign_up/veiw/veiw_model/signup_widget/custom_text.dart';
import 'package:ecommerca_app/functions/validat.dart';
import 'package:ecommerca_app/functions/validatcheck.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../consts/style_const/textstyle.dart';

// ignore: must_be_immutable
class body_sign_section extends StatelessWidget {
  body_sign_section({super.key});

  TextEditingController controllename = TextEditingController();

  TextEditingController controllepas = TextEditingController();

  TextEditingController controllemail = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 510,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: Card(
        child: Form(
          key: formkey,
          onChanged: () {
            keyform_state(formkey);
          },
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: custom_text_widget(
                    text: "Sign Up",
                    style: text_style.textstyle33,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              column_customfeild(
                width: 305.0,
                text: "name",
                validator: namevalidator,
                controlle: controllename,
              ),
              const SizedBox(
                height: 20,
              ),
              column_customfeild(
                width: 305.0,
                text: "Email",
                controlle: controllemail,
                validator: validator,
              ),
              const SizedBox(
                height: 20,
              ),
              column_customfeild(
                width: 305.0,
                text: "pasword",
                obs: true,
                controlle: controllepas,
                validator: validator_pasword,
              ),
              const SizedBox(
                height: 50,
              ),
              custom_st_button(
                ontop: () {
                  if (keyform_state(formkey)) {
                    BlocProvider.of<SignUpCubit>(context)
                        .create(controllemail.text, controllepas.text);
                  }
                },
                name: controllename,
              )
            ],
          ),
        ),
      ),
    );
  }
}

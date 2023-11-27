import 'package:ecommerca_app/approuter.dart';
import 'package:ecommerca_app/consts/image_link.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/cubit/log_in_cubit.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/custom_button_state.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/row_welcom.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/section_body.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/social_auth.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:ecommerca_app/featurs/auth/sign_up/data/repo_saveuser_data.dart';
import 'package:ecommerca_app/functions/validatcheck.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../consts/style_const/textstyle.dart';

// ignore: must_be_immutable
class login extends StatelessWidget {
  login({super.key});

  late TextEditingController controlemail;

  late TextEditingController controlepasword;
  save_user su = save_user(FirebaseAuth.instance);
  GlobalKey<FormState>? kef;

  @override
  Widget build(BuildContext context) {
    kef = GlobalKey<FormState>();

    controlemail = TextEditingController();
    controlepasword = TextEditingController();

    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 100, left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  child: Column(
                    children: [
                      const row_welcom(),
                      const SizedBox(
                        height: 5,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: custom_text(
                          opacity: 0.6,
                          text: "Sign in to  Continue",
                          style: text_style.textstyle14,
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      body_setion(
                        controlleemail: controlemail,
                        controllepasword: controlepasword,
                        keyform: kef,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      custom_state_button(
                        ontop: () async {
                          if (keyform_state(kef)) {
                            BlocProvider.of<LogInCubit>(context).signin(
                                email: controlemail.text,
                                pasword: controlepasword.text);
                          }
                        },
                        controlemail: controlemail,
                        controlepasword: controlepasword,
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                custom_text(text: "-OR-", style: text_style.textstyle16),
                const SizedBox(
                  height: 10,
                ),
                BlocListener<LogInCubit_face, LogInState>(
                  listener: (context, state) {
                    if (state is LogInsucces) {
                      GoRouter.of(context).pushReplacement(approuter.homee);
                    }
                  },
                  child: social_auth(
                    ontap: () {
                      BlocProvider.of<LogInCubit_face>(context)
                          .signinwithfacebook();
                      su.save(null);
                    },
                    icon: fascebook_logo,
                    text: "Sign in with Facebook",
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                BlocListener<LogInCubit_googl, LogInState>(
                  listener: (context, state) {
                    if (state is LogInsucces) {
                      su.save(null);
                      GoRouter.of(context).pushReplacement(approuter.homee);
                    }
                  },
                  child: social_auth(
                    ontap: () {
                      BlocProvider.of<LogInCubit_googl>(context)
                          .signinwithgoogl();
                    },
                    icon: google_logo,
                    text: "   Sign in with Google",
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

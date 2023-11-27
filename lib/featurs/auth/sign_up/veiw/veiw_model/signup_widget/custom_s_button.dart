import 'package:ecommerca_app/approuter.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/custom_btton.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/stackbutton_progres.dart';
import 'package:ecommerca_app/featurs/auth/sign_up/data/repo_saveuser_data.dart';
import 'package:ecommerca_app/featurs/auth/sign_up/veiw/cupit/cubit/sign_up_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class custom_st_button extends StatelessWidget {
  custom_st_button({super.key, required this.ontop, required this.name});
  final Function() ontop;
  final save_user su = save_user(FirebaseAuth.instance);

  final TextEditingController? name;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      builder: (BuildContext context, state) {
        if (state is SignUploading) {
          return const stack_button_brogres();
        }

        return custom_button(
          ontop: ontop,
          width: 100.0,
          text: "SIGN UP",
        );
      },
      listener: (context, state) {
        if (state is SignUpsuccess) {
          show(context, state.message, "succes", su, name!.text);
        }
        if (state is SignUpfaliur) {
          show(context, state.message, "Error", su, name!.text);
        }
      },
    );
  }
}

show(context, message, title, save_user save_u, String? name) {
  return showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              Center(
                child: custom_button(
                  ontop: () async {
                    GoRouter.of(context).pop();
                    if (title != "Error") {
                      await save_u.save(name!);
                      GoRouter.of(context).pushReplacement(approuter.veriyfy);
                    }
                  },
                  text: "OK",
                  width: 100.0,
                ),
              ),
            ],
          ));
}

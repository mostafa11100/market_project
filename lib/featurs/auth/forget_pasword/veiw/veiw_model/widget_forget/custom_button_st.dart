import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:ecommerca_app/featurs/auth/forget_pasword/veiw/cubit/forget_pasword_cubit.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/custom_btton.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/stackbutton_progres.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

// ignore: camel_case_types
class custom_button_stat extends StatelessWidget {
  const custom_button_stat(
      {super.key,
      required this.controlemail,
      this.controlepasword,
      required this.ontop,
      this.width = 270.0});
  final TextEditingController controlemail;
  final TextEditingController? controlepasword;
  final Function() ontop;
  // ignore: prefer_typing_uninitialized_variables
  final width;

  @override
  Widget build(BuildContext context) {
    print("eee");
    return BlocConsumer<ForgetPaswordCubit, ForgetPaswordState>(
      builder: (BuildContext context, state) {
        if (state is Forgetloading) {
          print("oooo");
          return const stack_button_brogres();
        }

        return custom_button(
          ontop: ontop,
          width: 270.0,
          text: "Send",
        );
      },
      listener: (context, state) {
        if (state is Forgetsucces) {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: const Text("Succes "),
                    content: custom_text(
                      text:
                          "We have sent you an email containing your password. Please check your email",
                      style: text_style.textstyle18,
                    ),
                    actions: [
                      Center(
                        child: custom_button(
                          ontop: () {
                            GoRouter.of(context).pop();
                          },
                          text: "OK",
                          width: 100.0,
                        ),
                      ),
                    ],
                  ));
        }
      },
    );
  }
}

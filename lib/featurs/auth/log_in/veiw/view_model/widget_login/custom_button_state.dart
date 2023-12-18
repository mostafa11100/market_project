import 'package:ecommerca_app/approuter.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/cubit/log_in_cubit.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/custom_btton.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/stackbutton_progres.dart';
import 'package:ecommerca_app/featurs/shared_get_useracount/repo_get_.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomStateButton extends StatelessWidget {
  const CustomStateButton(
      {super.key,
      required this.controlemail,
      this.controlepasword,
      required this.ontop});
  final TextEditingController controlemail;
  final TextEditingController? controlepasword;
  final Function() ontop;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LogInCubit, LogInState>(
      builder: (BuildContext context, state) {
        if (state is LogInloading) {
          return const stack_button_brogres();
        }

        return custom_button(
          ontop: ontop,
          width: 270.0,
          text: "Sign In",
        );
      },
      listener: (context, state) {
        if (state is LogInsucces) {
          state.checkstateandgo(() {
            add_user.add_to_shared(controlemail.text, "user");
            GoRouter.of(context).pushReplacement(AppRouter.homee);
          }, () {
            GoRouter.of(context).pushReplacement(AppRouter.veriYfy);
          });
        }
        if (state is LogInfaliur) {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: const Text("error"),
                    content: Text(state.message),
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

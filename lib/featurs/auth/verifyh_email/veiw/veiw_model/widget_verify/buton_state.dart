import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/custom_btton.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/stackbutton_progres.dart';
import 'package:ecommerca_app/featurs/auth/verifyh_email/veiw/cubit/cubit/verify_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class custom_s_button extends StatelessWidget {
  const custom_s_button({super.key, required this.ontop});
  final Function() ontop;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<VerifyCubit, VerifyState>(
      builder: (BuildContext context, state) {
        if (state is Verifyloading) {
          return const stack_button_brogres();
        }

        return custom_button(
          ontop: ontop,
          width: 280.0,
          text: "Send",
        );
      },
      listener: (context, state) {
        if (state is Verifysucces) {
          show(
              context,
              "We have sent a verification email to your email address. Please check your email inbox and spam folder for the verification message. Click the verification link in the email to confirm your account. After verifying, please return to the app and log in again.",
              "succes");
        }
        if (state is Verifyfaliur) {
          show(context, state.message, "Error");
        }
      },
    );
  }
}

show(context, message, title) {
  return showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: Text(title),
            content: Text(message),
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

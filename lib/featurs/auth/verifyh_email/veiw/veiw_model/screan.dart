import 'package:ecommerca_app/approuter.dart';
import 'package:ecommerca_app/consts/style_const/color_app.dart';
import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/custom_text_buttton.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:ecommerca_app/featurs/auth/verifyh_email/veiw/cubit/cubit/verify_cubit.dart';
import 'package:ecommerca_app/featurs/auth/verifyh_email/veiw/veiw_model/widget_verify/buton_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class VerifYemail1 extends StatelessWidget {
  const VerifYemail1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 120),
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.email_rounded,
              size: 300,
              color: primary_color,
            ),
            const SizedBox(
              height: 80,
            ),
            custom_text(
                text: " Verification To your Email",
                style: text_style.textstyle18),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 200,
              child: Center(
                child: custom_text(
                  text: "We will send Verification to your email",
                  style: text_style.textstyle14,
                  opacity: .5,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            custom_s_button(
              ontop: () {
                BlocProvider.of<VerifyCubit>(context).sendverifyemail();
              },
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  custom_text(text: "Go To", style: text_style.textstyle16),
                  custom_text_button(
                    ontap: () {
                      GoRouter.of(context).pushReplacement(AppRouter.loGin);
                    },
                    text: "Sign In",
                    color: primary_color,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

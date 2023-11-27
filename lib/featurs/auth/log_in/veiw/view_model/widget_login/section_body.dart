import 'package:ecommerca_app/approuter.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/column_feild.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/custom_text_buttton.dart';
import 'package:ecommerca_app/functions/validat.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class body_setion extends StatelessWidget {
  body_setion(
      {super.key,
      required this.controlleemail,
      required this.controllepasword,
      required this.keyform});
  final TextEditingController controlleemail;
  final TextEditingController controllepasword;
  final keyform;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: keyform,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            column_customfeild(
              validator: validator,
              controlle: controlleemail,
              text: "Email",
            ),
            const SizedBox(
              height: 30,
            ),
            column_customfeild(
              validator: validator_pasword,
              controlle: controllepasword,
              text: "Pasword",
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: custom_text_button(
                ontap: () {
                  GoRouter.of(context)
                      .pushReplacement(approuter.verify_pasowrd);
                },
                text: "Forget Pasword",
              ),
            )
          ],
        ));
  }
}

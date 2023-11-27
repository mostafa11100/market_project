import 'package:ecommerca_app/approuter.dart';
import 'package:ecommerca_app/consts/style_const/color_app.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/custom_text_buttton.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../consts/style_const/textstyle.dart';

import 'package:flutter/material.dart';

class row_welcom extends StatelessWidget {
  const row_welcom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Welcome,",
          style: text_style.textstyle33,
        ),
        Spacer(),
        custom_text_button(
          ontap: () {
            GoRouter.of(context).pushReplacement(approuter.signup);
          },
          text: "Sing Up",
          color: primary_color,
        )
      ],
    );
  }
}

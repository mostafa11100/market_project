import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:flutter/material.dart';

class custom_row_info extends StatelessWidget {
  custom_row_info(
      {super.key,
      this.op = 1.0,
      required this.text1,
      required this.text2,
      this.style1 = text_style.textstyle24,
      this.style2 = text_style.textstyle24});
  final String text1;
  final String text2;
  var style1;
  var style2;
  double op;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          custom_text(
            text: text1,
            style: style1,
            opacity: op,
          ),
          const Spacer(),
          custom_text(text: text2, style: style2),
        ],
      ),
    );
  }
}

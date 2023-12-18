import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:flutter/material.dart';

class order_info extends StatelessWidget {
  const order_info({super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        custom_text(text: text1, style: text_style.textstyle18),
        const Spacer(),
        custom_text(text: text2, style: text_style.textstyle18),
      ],
    );
  }
}

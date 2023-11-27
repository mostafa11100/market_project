import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:flutter/material.dart';
import '../../../../../../consts/style_const/textstyle.dart';

class custom_text_button extends StatelessWidget {
  const custom_text_button(
      {super.key,
      this.text,
      this.style,
      this.color = Colors.black,
      required this.ontap});
  final text;
  final TextStyle? style;
  final Color color;
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: ontap,
        child: custom_text(
            text: text,
            style: style == null
                ? text_style.textstyle18.copyWith(color: color)
                : style!));
  }
}

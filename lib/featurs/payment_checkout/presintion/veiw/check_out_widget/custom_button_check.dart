import 'package:ecommerca_app/consts/style_const/color_app.dart';
import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:flutter/material.dart';

class custom_button_check extends StatelessWidget {
  custom_button_check({
    super.key,
    required this.ontop,
    this.text,
    this.width = double.infinity,
    this.color,
    this.textcolor = Colors.white,
    this.height = 40.0,
  });

  final Function() ontop;
  final text;
  final double width;
  final Color? color;
  final height;
  final textcolor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: check_color,
      radius: 13,
      onTap: ontop,
      child: Container(
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13), color: check_color),
          width: width,
          child: Center(
            child: Text(
              text,
              style: text_style.textstyle22.copyWith(color: textcolor),
            ),
          )),
    );
  }
}

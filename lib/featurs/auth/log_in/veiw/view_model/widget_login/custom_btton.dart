import 'package:ecommerca_app/consts/style_const/color_app.dart';
import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:flutter/material.dart';

class custom_button extends StatelessWidget {
  custom_button({
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
    return Container(
        height: height,
        width: width,
        child: ElevatedButton(
          style:
              ElevatedButton.styleFrom(backgroundColor: color ?? primary_color),
          onPressed: ontop,
          child: Text(
            text,
            style: text_style.textstyle16.copyWith(color: textcolor),
          ),
        ));
  }
}

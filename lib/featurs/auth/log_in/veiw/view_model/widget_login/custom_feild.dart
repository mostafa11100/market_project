import 'package:ecommerca_app/consts/style_const/color_app.dart';
import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class custom_feild extends StatelessWidget {
  custom_feild(
      {super.key,
      this.obs = false,
      required this.controlle,
      this.st = false,
      this.validator,
      this.hinttext = ""});
  final obs;
  final TextEditingController controlle;
  bool st;
  String? Function(String? s)? validator;
  final String? hinttext;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: st == true ? validator : null,
      controller: controlle,
      style: text_style.textstyle17.copyWith(fontWeight: FontWeight.w500),
      obscureText: obs,
      decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: text_style.textstyle14,
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: primary_color, width: 1.5))),
    );
  }
}

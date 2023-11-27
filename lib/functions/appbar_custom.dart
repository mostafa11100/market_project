import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

AppBar? custom_appbar(titile) {
  return AppBar(
    clipBehavior: Clip.antiAliasWithSaveLayer,
    centerTitle: true,
    elevation: 0.0,
    backgroundColor: Colors.white,
    leading: IconButton(
      onPressed: () {},
      icon: const Image(image: Svg("assets/Arrow 1.svg")),
    ),
    title: custom_text(
      text: titile,
      style: text_style.textstyle24
          .copyWith(color: const Color.fromARGB(255, 0, 0, 0)),
    ),
  );
}

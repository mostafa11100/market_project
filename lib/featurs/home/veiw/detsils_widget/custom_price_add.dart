import 'package:ecommerca_app/consts/style_const/color_app.dart';
import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/custom_btton.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:ecommerca_app/featurs/home/data/veiwmodel/model_categoris.dart';
import 'package:flutter/material.dart';

class row_price_add extends StatelessWidget {
  const row_price_add(
      {super.key, required this.function, required this.product});
  final Function() function;
  final model_product product;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              custom_text(text: "BRICE", style: text_style.textstyle17),
              custom_text(
                  text: product.price.toString(),
                  style: text_style.textstyle16.copyWith(color: primary_color)),
            ],
          ),
          const Spacer(),
          custom_button(
            ontop: function,
            text: "Add",
            width: 100.0,
          ),
        ],
      ),
    );
  }
}

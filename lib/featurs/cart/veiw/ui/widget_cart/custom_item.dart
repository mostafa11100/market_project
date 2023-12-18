import 'package:ecommerca_app/consts/style_const/color_app.dart';
import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';

import 'package:ecommerca_app/featurs/cart/veiw/ui/widget_cart/custom_couunter.dart';
import 'package:ecommerca_app/featurs/cart/veiw/ui/widget_cart/custom_image.dart';
import 'package:ecommerca_app/featurs/home/data/veiwmodel/model_categoris.dart';
import 'package:flutter/material.dart';

class ItemLstvew extends StatelessWidget {
  const ItemLstvew({super.key, required this.cart});
  final model_product cart;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.height / 2.9,
      child: Column(
        children: [
          Row(
            children: [
              custom_image(lnkimage: cart.image),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  custom_text(
                    text: cart.name.toString(),
                    maxline: 1,
                    style: text_style.textstyle18
                        .copyWith(fontFamily: "Comfortaa "),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  custom_text(
                      text: " \$${cart.price}",
                      style: text_style.textstyle14
                          .copyWith(color: primary_color)),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomCounter(
                    cart: cart,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

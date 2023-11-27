// ignore_for_file: unused_element

import 'package:another_flushbar/flushbar.dart';
import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:ecommerca_app/featurs/home/data/veiwmodel/model_categoris.dart';
import 'package:ecommerca_app/featurs/home/veiw/cubit/cubit/data_home_screan_cubit.dart';
import 'package:ecommerca_app/featurs/home/veiw/detsils_widget/custom_price_add.dart';
import 'package:ecommerca_app/featurs/home/veiw/detsils_widget/custom_row_widget_details.dart';
import 'package:ecommerca_app/featurs/home/veiw/detsils_widget/custom_row_details_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class details_screan extends StatelessWidget {
  const details_screan({super.key, required this.product});
  final model_product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                  width: double.infinity,
                  height: 200,
                  child: Image.network(product.image!)),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: custom_text(
                    text: product.name.toString(),
                    style: text_style.textstyle35.copyWith(
                      fontFamily: "Comfortaa",
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  custom_row_details(productdetailse: product.size.toString()),
                  const Spacer(),
                  custom_row_details_color(
                      productdetailse: product.color.toString()),
                ],
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: custom_text(
                    text: "Details",
                    style: text_style.textstyle33.copyWith(
                      fontFamily: "Comfortaa",
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              custom_text(
                  text: product.details!, style: text_style.textstyle16),
              const SizedBox(
                height: 15,
              ),
              row_price_add(
                function: () {
                  model_product pr = model_product.tojson(
                      product.price,
                      product.details,
                      product.name,
                      product.type,
                      product.image,
                      product.size,
                      product.color,
                      product.count);
                  BlocProvider.of<cart_add_cubit2>(context).add_tocrt(pr);
                },
                product: product,
              )
            ],
          )),
    );
  }

  void _flushbar(BuildContext context, body) async {
    await Flushbar(
      title: '',
      message: body,
      duration: Duration(seconds: 2),
    ).show(context);
  }
}

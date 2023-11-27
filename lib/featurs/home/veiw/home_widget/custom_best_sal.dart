import 'package:ecommerca_app/approuter.dart';
import 'package:ecommerca_app/consts/style_const/color_app.dart';
import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:ecommerca_app/featurs/home/data/veiwmodel/model_categoris.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class custom_best_sall extends StatelessWidget {
  const custom_best_sall({super.key, required this.l_product, this.byd = 2.5});
  final List<model_product> l_product;
  final double byd;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 252, 252),
      width: double.infinity,
      height: MediaQuery.of(context).size.height / byd,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: l_product.length,
          itemBuilder: (context, i) {
            print(l_product[i].image!);
            return InkWell(
              onTap: () {
                GoRouter.of(context)
                    .push(approuter.detials, extra: l_product[i]);
              },
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2.36,
                      child: AspectRatio(
                        aspectRatio: .76,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(l_product[i].image!),
                              ),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ),
                    custom_text(
                      text: l_product[i].name!,
                      style: text_style.textstyle18,
                      maxline: 1,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    custom_text(
                      text: l_product[i].type ?? "",
                      style: text_style.textstyle17,
                      opacity: 0.5,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    custom_text(
                        text: "\$ ${l_product[i].price}",
                        style: text_style.textstyle17
                            .copyWith(color: primary_color)),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

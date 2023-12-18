import 'package:ecommerca_app/approuter.dart';
import 'package:ecommerca_app/consts/style_const/color_app.dart';
import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/custom_btton.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:ecommerca_app/featurs/cart/veiw/cubit/cubit/cart_cubit.dart';
import 'package:ecommerca_app/featurs/cart/veiw/cubit/cubit/cubit_delate.dart';
import 'package:ecommerca_app/featurs/cart/veiw/cubit/cubit/total_cubit.dart';
import 'package:ecommerca_app/featurs/cart/veiw/ui/widget_cart/custom_item.dart';
import 'package:ecommerca_app/featurs/home/data/veiwmodel/model_categoris.dart';
import 'package:ecommerca_app/featurs/payment_checkout/data/check_outdata_model/check_out_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Expanded(
            flex: 9,
            child: BlocBuilder<CartCubit, CartState>(
              builder: (context, state) {
                if (state is Cartloading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state is Cartsuccess) {
                  return ListView.separated(
                    itemCount: state.data!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Dismissible(
                        onDismissed: (i) {
                          delate.delate_fdb(state.data![index]);

                          if (index == 0) {
                            BlocProvider.of<CartCubit>(context).getcart_data();
                          }

                          BlocProvider.of<TotalCubit>(context).gettotal();
                        },
                        key: ValueKey(index),
                        child: ItemLstvew(
                          cart: state.data![index],
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        height: 10.0,
                      );
                    },
                  );
                }
                if (state is Cartnull) {
                  return SizedBox(
                    height: 340,
                    width: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/undraw_empty_cart_co35.png"),
                        const SizedBox(
                          height: 15,
                        ),
                        custom_text(
                            text: "Empty Cart", style: text_style.textstyle18)
                      ],
                    ),
                  );
                }
                return const Center(child: Text("errror"));
              },
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    custom_text(
                        opacity: .3,
                        text: "TOTAL",
                        style: text_style.textstyle18),
                    const SizedBox(
                      height: 10.0,
                    ),
                    BlocBuilder<TotalCubit, TotalState>(
                      builder: (context, state) {
                        if (state is Totalloading) {
                          return customTe(0);
                        } else if (state is Totalsucces) {
                          return customTe(state.total);
                        }
                        return customTe(0);
                      },
                    )
                  ],
                ),
                custom_button(
                  ontop: () {
                    GoRouter.of(context).push(AppRouter.checkhom);
                  },
                  text: "CHECKOUT",
                  width: 132.0,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget customTe(value) {
    return custom_text(
        text: "\$$value",
        style: text_style.textstyle16.copyWith(color: primary_color));
  }
}

bool checkinlist(List<model_product> model, index) {
  bool st = false;
  model.where((element) {
    if (element.name == model[index].name) {
      st = true;
      return true;
    } else {
      st = false;
      return false;
    }
  });
  return st;
}

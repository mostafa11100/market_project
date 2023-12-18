import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:ecommerca_app/featurs/cart/data/repo/repoimp_db.dart';
import 'package:ecommerca_app/featurs/cart/veiw/cubit/cubit/cart_cubit.dart';
import 'package:ecommerca_app/featurs/home/veiw/home_widget/custom_best_sal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: camel_case_types
class summary_screan1 extends StatelessWidget {
  const summary_screan1(
      {super.key,
      required this.streat1,
      required this.streat2,
      required this.city,
      required this.state,
      required this.country});
  final TextEditingController streat1;
  final TextEditingController streat2;
  final TextEditingController city;
  final TextEditingController state;
  final TextEditingController country;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit(DbrepoImp())..getcart_data(),
      child: SizedBox(
        height: 200,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100,
            ),
            BlocBuilder<CartCubit, CartState>(
              builder: (context, state) {
                if (state is Cartloading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state is Cartsuccess) {
                  return CustombBestsall(
                    byd: 2.8,
                    product: state.data!,
                  );
                }
                return Center(
                  child: custom_text(
                    text: state.message!,
                    style: text_style.textstyle18,
                  ),
                );
              },
            ),
            const SizedBox(
              height: 100,
            ),
            custom_text(text: "Shipping addres", style: text_style.textstyle18),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                custom_text(
                  opacity: 0.7,
                  text: "${streat1.text} ,",
                  style: text_style.textstyle16,
                ),
                custom_text(
                    opacity: 0.7,
                    text: "${streat2.text} ,",
                    style: text_style.textstyle16),
                custom_text(
                    opacity: 0.7,
                    text: city.text,
                    style: text_style.textstyle16),
                custom_text(
                    opacity: 0.7,
                    text: "${state.text} ,",
                    style: text_style.textstyle16),
                custom_text(
                    opacity: 0.7,
                    text: "${country.text} ,",
                    style: text_style.textstyle16),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

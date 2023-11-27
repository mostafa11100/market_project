import 'package:ecommerca_app/classes/token_strip.dart';
import 'package:ecommerca_app/featurs/payment_checkout/data/repo/repo_imp.dart';
import 'package:ecommerca_app/featurs/payment_checkout/presintion/cubit/cubit/payment_cubot_cubit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerca_app/featurs/payment_checkout/presintion/veiw/screans/check_out_veiw.dart';
import 'package:ecommerca_app/featurs/thankyou/representaion/veiw/thank_screan.dart';

import 'consts/style_const/color_app.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //علشن تضمن ان التطبيق يتعمل ليه انشياليذ لكل  مكوناته  وضمان ان ميحصلش اخطاء
  //Stripe.publishableKey = token_strip;
  await Firebase.initializeApp(); //اعمل انشيالذ ل الفاي ر بيز
  runApp(const ecommerca_app());
}

// ignore: camel_case_types
class ecommerca_app extends StatelessWidget {
  const ecommerca_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: rout,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        buttonTheme: const ButtonThemeData(buttonColor: primary_color),
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
RouterConfig<Object>? rout = GoRouter(routes: [
  // GoRoute(
  //     path: "/",
  //     builder: (contex, state) {
  //       return BlocProvider(
  //         create: (context) => PaymentCubot(repo_imp()),
  //         child: check_out_veiw(),
  //       );
  //     }),
  // GoRoute(
  //     path: "/payment_screan",
  //     builder: (contex, state) {
  //       return const payment_screan();
  //     }),
  GoRoute(
      path: "/",
      builder: (contex, state) {
        return const thank_screan();
      }),
]);

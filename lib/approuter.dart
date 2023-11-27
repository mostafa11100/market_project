import 'package:ecommerca_app/classes/shared_pref.dart';
import 'package:ecommerca_app/featurs/auth/log_in/data/repo_data_imp.dart';
import 'package:ecommerca_app/featurs/auth/log_in/data/repo_imp_signinwithgoogl.dart';
import 'package:ecommerca_app/featurs/auth/log_in/data/signin_withfacebook.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/cubit/log_in_cubit.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/login_screan.dart';
import 'package:ecommerca_app/featurs/auth/sign_up/data/repo_signUp.dart';
import 'package:ecommerca_app/featurs/auth/sign_up/veiw/cupit/cubit/sign_up_cubit.dart';
import 'package:ecommerca_app/featurs/auth/sign_up/veiw/veiw_model/signup_screan.dart';
import 'package:ecommerca_app/featurs/auth/verifyh_email/data/repo_verify_email.dart';
import 'package:ecommerca_app/featurs/auth/verifyh_email/veiw/cubit/cubit/verify_cubit.dart';
import 'package:ecommerca_app/featurs/auth/verifyh_email/veiw/veiw_model/screan.dart';
import 'package:ecommerca_app/featurs/cart/data/repo/repo_cart.dart';
import 'package:ecommerca_app/featurs/check_out/veiw/veiw_screan/check_out_screan/check_home.dart';
import 'package:ecommerca_app/featurs/home/data/veiwmodel/model_categoris.dart';
import 'package:ecommerca_app/featurs/home/veiw/cubit/cubit/data_home_screan_cubit.dart';
import 'package:ecommerca_app/featurs/home/veiw/details_screan.dart';
import 'package:ecommerca_app/featurs/home_feature/veiw/controle_home_feature.dart';
import 'package:ecommerca_app/featurs/home_feature/veiw/cubit/home_controle_featue_cubit.dart';
import 'package:ecommerca_app/featurs/payment_checkout/presintion/veiw/screans/check_out_veiw.dart';
import 'package:ecommerca_app/featurs/profile/veiw/screan/screan_profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class approuter {
  static String log_in = '/';
  static String signup = '/signup';
  static String veriyfy = "/verify";
  static String homee = "/home";
  static String detials = "/detials";
  static String profilee = "/profile";
  static String check_hom = "/check_home";
  static String checkout_card = "/check_out_veiw";
  // ignore: non_constant_identifier_names
  static String verify_pasowrd = "/verifypasword/:product";

  // ignore: non_constant_identifier_names
  static String reseat_pasowrdscrean = "/reseatpasword";

  static RouterConfig<Object> rout = GoRouter(routes: [
    GoRoute(
        path: homee,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => HomeControleFeatueCubit(),
            child: const home_feature(),
          );
        }),
    GoRoute(
        path: detials,
        builder: (context, state) {
          return BlocProvider(
              create: (context) => cart_add_cubit2(add_to_db_()),
              child: details_screan(product: state.extra as model_product));
        }),
    GoRoute(
        redirect: (context, i) async {
          // ignore: unrelated_type_equality_checks
          bool stat = await shared1.check_('name');
          print("enterfirst    $stat");

          if (stat != true) {
            return log_in;
          } else {
            return homee;
          }
        },
        path: log_in,
        builder: (context, state) {
          return MultiBlocProvider(providers: [
            BlocProvider(
              create: (context) {
                return LogInCubit_face(sign_inwith_facebook());
              },
            ),
            BlocProvider(
              create: (context) {
                return LogInCubit(repo_imp_signin(FirebaseAuth.instance));
              },
            ),
            BlocProvider(
              create: (context) {
                return LogInCubit_googl(sign_inwith_googl());
              },
            ),
          ], child: login());
        }),
    GoRoute(
        path: veriyfy,
        builder: (context, state) {
          return BlocProvider(
              create: (context) {
                return VerifyCubit(verify(FirebaseAuth.instance));
              },
              child: verify_email1());
        }),
    GoRoute(
        path: signup,
        builder: (context, state) {
          return BlocProvider(
              create: (context) {
                return SignUpCubit(repo_signup(FirebaseAuth.instance));
              },
              child: const sign_up());
        }),
    GoRoute(
        path: profilee,
        builder: (context, state) {
          return BlocProvider(
              create: (context) {
                return SignUpCubit(repo_signup(FirebaseAuth.instance));
              },
              child: profile());
        }),
    GoRoute(
        path: check_hom,
        builder: ((context, state) {
          return check_home();
        })),
  ]);
}

import 'package:ecommerca_app/featurs/cart/veiw/cubit/cubit/total_cubit.dart';
import 'package:ecommerca_app/featurs/landing_badge/veiw/LandingBadge_home_feature.dart';
import 'package:ecommerca_app/featurs/landing_badge/veiw/cubit/landingBadge_controle_featue_cubit.dart';
import 'package:ecommerca_app/featurs/payment_checkout/data/paypal_pramitar_model.dart/all_model_pr.dart';
import 'package:ecommerca_app/featurs/payment_checkout/presintion/veiw/check_out_widget/paypal_checkout_button.dart';
import 'package:ecommerca_app/featurs/payment_checkout/presintion/veiw/screans/check_out_veiw.dart';
import 'package:ecommerca_app/featurs/thankyou/representaion/veiw/thank_screan.dart';
import 'package:ecommerca_app/utlis/animation/slide_animate.dart';
import 'package:firebase_auth/firebase_auth.dart' show FirebaseAuth;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerca_app/classes/shared_pref.dart';
import 'package:ecommerca_app/featurs/auth/log_in/data/repo_data_imp.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/cubit/log_in_cubit.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/login_screan.dart';
import 'package:ecommerca_app/featurs/auth/sign_up/data/repo_signUp.dart';
import 'package:ecommerca_app/featurs/auth/sign_up/veiw/cupit/cubit/sign_up_cubit.dart';
import 'package:ecommerca_app/featurs/auth/sign_up/veiw/veiw_model/signup_screan.dart';
import 'package:ecommerca_app/featurs/auth/verifyh_email/data/repo_verify_email.dart';
import 'package:ecommerca_app/featurs/auth/verifyh_email/veiw/cubit/cubit/verify_cubit.dart';
import 'package:ecommerca_app/featurs/auth/verifyh_email/veiw/veiw_model/screan.dart';
import 'package:ecommerca_app/featurs/cart/data/repo/repoimp_db.dart';
import 'package:ecommerca_app/featurs/check_out/veiw/veiw_screan/check_out_screan/check_home.dart';
import 'package:ecommerca_app/featurs/home/data/veiwmodel/model_categoris.dart';
import 'package:ecommerca_app/featurs/home/veiw/cubit/cubit/data_home_screan_cubit.dart';
import 'package:ecommerca_app/featurs/home/veiw/details_screan.dart';
import 'package:ecommerca_app/featurs/profile/veiw/screan/screan_profile.dart';

class AppRouter {
  static String loGin = '/';
  static String checkoutveiw = '/CheckOutveiw';
  static String siGnup = '/signup';
  static String veriYfy = "/verify";
  static String homee = "/home";
  static String detials = "/detials";
  static String profilee = "/profile";
  static String checkhom = "/check_home";
  static String checkoutcard = "/check_out_veiw";
  // ignore: non_constant_identifier_names
  static String verifypasowrd = "/verifypasword/:product";

  // ignore: non_constant_identifier_names
  static String reseat_pasowrdscrean = "/reseatpasword";

  static RouterConfig<Object> rout = GoRouter(routes: [
    GoRoute(
        path: homee,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => LandingControleFeatueCubit(),
            child: const LandingBadge(),
          );
        }),
    GoRoute(
        path: detials,
        pageBuilder: (context, state) {
          return Slide(
              page: BlocProvider(
                create: (context) => cart_add_cubit2(DbrepoImp()),
                child: details_screan(product: state.extra as model_product),
              ),
              x: 0.0,
              y: 1.0);
        }),
    GoRoute(
        redirect: (context, i) async {
          // ignore: unrelated_type_equality_checks
          bool stat = await Shared.check_('name');
          if (stat != true) {
            return loGin;
          } else {
            return homee;
          }
        },
        path: loGin,
        builder: (context, state) {
          return MultiBlocProvider(providers: [
            BlocProvider(
              create: (context) {
                return LogInCubit(repo_imp_signin(FirebaseAuth.instance));
              },
            ),
            BlocProvider(
              create: (context) {
                return LogInCubit_googl(repo_imp_signin(FirebaseAuth.instance));
              },
            ),
          ], child: Login());
        }),
    GoRoute(
        path: veriYfy,
        builder: (context, state) {
          return BlocProvider(
              create: (context) {
                return VerifyCubit(verify(FirebaseAuth.instance));
              },
              child: const VerifYemail1());
        }),
    GoRoute(
        path: siGnup,
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
        path: checkhom,
        pageBuilder: ((context, state) {
          return Slide(page: check_home(), x: 1.0, y: 0.0, d: 400);
        })),
    GoRoute(
        path: checkoutveiw,
        builder: (contex, state) {
          return BlocProvider(
            create: (BuildContext context) =>
                TotalCubit(DbrepoImp())..gettotal(),
            child: const CheckOutveiw(),
          );
        }),
    GoRoute(
        path: "/thank_screan",
        builder: (contex, state) {
          return BlocProvider(
            create: (BuildContext context) {
              return TotalCubit(DbrepoImp())..gettotal();
            },
            child: const ThankScrean(),
          );
        }),
    GoRoute(
        path: "/paypal_screan_webview",
        builder: (contex, state) {
          return paypal_screan_webview(
            allmodel: state.extra as all_pr_model,
          );
        }),
  ]);
}

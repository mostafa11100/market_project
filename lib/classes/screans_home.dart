import 'package:ecommerca_app/featurs/cart/data/repo/repo_cart.dart';
import 'package:ecommerca_app/featurs/cart/veiw/cubit/cubit/cart_cubit.dart';
import 'package:ecommerca_app/featurs/cart/veiw/cubit/cubit/cubit/updata_cubit.dart';
import 'package:ecommerca_app/featurs/cart/veiw/cubit/cubit/total_cubit.dart';
import 'package:ecommerca_app/featurs/cart/veiw/veiwmodel/screan_cart.dart';
import 'package:ecommerca_app/featurs/home/veiw/home.dart';
import 'package:ecommerca_app/featurs/profile/veiw/screan/screan_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class screans_home {
  static List<Widget> list_screan = [
    home(),
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CartCubit(repo_imp_fetch_cart())..getcart_data(),
        ),
        BlocProvider(
          create: (context) => UpdataCubit(updata_data()),
        ),
        BlocProvider(
          create: (context) => TotalCubit(repo_imp_fetch_cart())..gettotal(),
        ),
      ],
      child: const cart(),
    ),
    profile()
  ];
}

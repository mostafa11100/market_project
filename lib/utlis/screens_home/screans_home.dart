import 'package:flutter/material.dart' show Widget;
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ecommerca_app/featurs/cart/data/repo/repoimp_db.dart';
import 'package:ecommerca_app/featurs/cart/veiw/cubit/cubit/cart_cubit.dart';
import 'package:ecommerca_app/featurs/cart/veiw/cubit/cubit/cubit/updata_cubit.dart';
import 'package:ecommerca_app/featurs/cart/veiw/cubit/cubit/total_cubit.dart';
import 'package:ecommerca_app/featurs/cart/veiw/ui/screan_cart.dart';
import 'package:ecommerca_app/featurs/home/veiw/home.dart';
import 'package:ecommerca_app/featurs/profile/veiw/screan/screan_profile.dart';

class ScreansHome {
  static List<Widget> listscrean = [
    const home(),
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CartCubit(DbrepoImp())..getcart_data(),
        ),
        BlocProvider(
          create: (context) => UpdataCubit(DbrepoImp()),
        ),
        BlocProvider(
          create: (context) => TotalCubit(DbrepoImp())..gettotal(),
        ),
      ],
      child: const Cart(),
    ),
    profile()
  ];
}

// ignore_for_file: camel_case_types

import 'package:ecommerca_app/classes/screans_home.dart';
import 'package:ecommerca_app/featurs/home/veiw/home_widget/custom_nav_bar.dart';
import 'package:ecommerca_app/featurs/home_feature/veiw/cubit/home_controle_featue_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class home_feature extends StatelessWidget {
  const home_feature({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeControleFeatueCubit, HomeControleFeatueState>(
      builder: (context, state) {
        return Scaffold(
          body: screans_home.list_screan[state.index],
          bottomNavigationBar: const custom_vanvg_bar(),
        );
      },
    );
  }
}

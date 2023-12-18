// ignore_for_file: camel_case_types

import 'package:ecommerca_app/featurs/landing_badge/veiw/cubit/landingBadge_controle_featue_cubit.dart';
import 'package:ecommerca_app/utlis/screens_home/screans_home.dart';
import 'package:ecommerca_app/featurs/home/veiw/home_widget/custom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LandingBadge extends StatelessWidget {
  const LandingBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LandingControleFeatueCubit, LandingControleFeatueState>(
      builder: (context, state) {
        return Scaffold(
          body: ScreansHome.listscrean[state.index],
          bottomNavigationBar: const custom_vanvg_bar(),
        );
      },
    );
  }
}

import 'package:ecommerca_app/consts/style_const/color_app.dart';
import 'package:ecommerca_app/consts/style_const/icon_app.dart';
import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:ecommerca_app/featurs/landing_badge/veiw/cubit/landingBadge_controle_featue_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: camel_case_types
class custom_vanvg_bar extends StatefulWidget {
  const custom_vanvg_bar({super.key});

  @override
  State<custom_vanvg_bar> createState() => _custom_vanvg_barState();
}

// ignore: camel_case_types
class _custom_vanvg_barState extends State<custom_vanvg_bar> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    print("yes");
    return NavigationBar(
      backgroundColor: white_color,
      height: 60,
      onDestinationSelected: (int index) {
        setState(() {
          BlocProvider.of<LandingControleFeatueCubit>(context)
              .goto_screan(index);
          x = index;
        });
      },
      indicatorColor: Colors.white,
      selectedIndex: x,
      destinations: <Widget>[
        NavigationDestination(
          selectedIcon: custom_text(
            text: "Explore",
            style: text_style.textstyle16,
          ),
          icon: icon_expolre,
          label: '',
        ),
        NavigationDestination(
          selectedIcon: custom_text(
            text: 'Car',
            style: text_style.textstyle16,
          ),
          icon: icon_cart,
          label: '',
        ),
        NavigationDestination(
          selectedIcon: custom_text(
            text: 'acount',
            style: text_style.textstyle16,
          ),
          icon: icon_person,
          label: '',
        ),
      ],
    );
  }
}

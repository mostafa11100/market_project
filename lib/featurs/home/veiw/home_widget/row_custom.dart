import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:ecommerca_app/featurs/home/veiw/cubit/cubit/data_home_screan_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class custom_r_ extends StatelessWidget {
  const custom_r_({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        custom_text(text: "Best Salling", style: text_style.textstyle18),
        Spacer(),
        InkWell(
            onTap: () {
              BlocProvider.of<DataHomeScrean_bestCubit>(context)
                  .fetcform_fir("best_seler", '', '', false);
            },
            child: Container(
                height: 40,
                width: 70,
                child: Center(
                    child: custom_text(
                        text: "See all", style: text_style.textstyle18))))
      ],
    );
  }
}

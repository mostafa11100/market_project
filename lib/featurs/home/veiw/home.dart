import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:ecommerca_app/featurs/home/data/repo/repo_apstract.dart';
import 'package:ecommerca_app/featurs/home/veiw/cubit/cubit/data_home_screan_cubit.dart';
import 'package:ecommerca_app/featurs/home/veiw/home_widget/custom_best_sal.dart';
import 'package:ecommerca_app/featurs/home/veiw/home_widget/custom_search.dart';
import 'package:ecommerca_app/featurs/home/veiw/home_widget/list_v_custom.dart';
import 'package:ecommerca_app/featurs/home/veiw/home_widget/row_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              DataHomeScreanCubit(repo_fetchdata_imp())..fetcform_fir(),
        ),
        BlocProvider(
          create: (context) => DataHomeScrean_bestCubit(repo_imp_fetchPest_s())
            ..fetcform_fir("best_seler", '', '', false),
        ),
      ],
      child: Container(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 50),
        child: ListView(padding: EdgeInsets.zero, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              custom_search(),
              const SizedBox(
                height: 30,
              ),
              custom_text(text: "Categoris", style: text_style.textstyle18),
              const SizedBox(
                height: 30,
              ),
              BlocBuilder<DataHomeScreanCubit, DataHomeScreanState>(
                builder: (context, state) {
                  if (state is DataHomeScreanloading) {
                    return const CircularProgressIndicator();
                  } else if (state is DataHomeScreansucces) {
                    return custom_l(
                      state: state.list_model,
                    );
                  }
                  return const Center(child: Text("pleas check enter net"));
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const custom_r_(),
              const SizedBox(
                height: 15,
              ),
              BlocBuilder<DataHomeScrean_bestCubit, DataHomeScreanState>(
                builder: (context, state) {
                  if (state is DataHomeScreanloading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state is DataHomeScreansucces_best_saller) {
                    return custom_best_sall(
                      l_product: state.list_model_best_product,
                    );
                  }
                  // ignore: curly_braces_in_flow_control_structures
                  return Center(
                    child: custom_text(
                      text: 'sorry pleass check internet',
                      style: text_style.textstyle16,
                    ),
                  );
                },
              )
            ],
          ),
        ]),
      ),
    );
  }
}

import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:ecommerca_app/featurs/home/data/veiwmodel/model_categoris.dart';
import 'package:ecommerca_app/featurs/home/veiw/cubit/cubit/data_home_screan_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';

class custom_l extends StatefulWidget {
  custom_l({super.key, required this.state});

  final List<model_categorise> state;

  @override
  State<custom_l> createState() => _custom_lState();
}

class _custom_lState extends State<custom_l> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.state.length,
          itemBuilder: (context, i) {
            return InkWell(
              //  splashColor: const Color.fromARGB(255, 113, 167, 211),
              onTap: () {
                BlocProvider.of<DataHomeScrean_bestCubit>(context).fetcform_fir(
                    "best_seler", "categoris_name", widget.state[i].type, true);
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    height: 150,
                    width: 45,
                    child: Column(
                      children: [
                        Expanded(
                            flex: 5,
                            child: Container(
                              height: 30,
                              width: 30,
                              child: CachedNetworkImage(
                                imageUrl: widget.state[i].photo.toString(),
                                placeholder: (context, url) => const Center(
                                    child: CircularProgressIndicator()),
                                errorWidget: (context, url, error) {
                                  print("error ${error.toString()}");
                                  return const Icon(Icons.error);
                                },
                              ),
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(
                            flex: 4,
                            child: custom_text(
                                text: widget.state[i].type!,
                                style: text_style.textstyle14)),
                      ],
                    )),
              ),
            );
          }),
    );
  }
}

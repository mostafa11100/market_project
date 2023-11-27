// ignore_for_file: must_be_immutable

import 'package:ecommerca_app/featurs/home/veiw/cubit/cubit/data_home_screan_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class custom_search extends StatelessWidget {
  custom_search({super.key});
  TextEditingController? cont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      height: 50,
      child: TextField(
          onEditingComplete: () {
            BlocProvider.of<DataHomeScrean_bestCubit>(context)
                .fetcform_fir("best_seler", 'name', cont!.text, true);
            SystemChannels.textInput.invokeMethod('TextInput.hide');
          },
          controller: cont,
          decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search), border: InputBorder.none)),
    );
  }
}

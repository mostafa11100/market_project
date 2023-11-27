// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:bloc/bloc.dart';
import 'package:ecommerca_app/featurs/cart/data/repo/repo_cart.dart';
import 'package:flutter/material.dart';

part 'updata_state.dart';

class UpdataCubit extends Cubit<UpdataState> {
  UpdataCubit(this.updata) : super(UpdataInitial());

  final repoabstract updata;

  void updata_data(cart) async {
    emit(Updatloadin());
    int stat = await updata.updata(cart);

    if (stat >= 1) {
      emit(Updatasucces());
    } else {
      emit(Updatafaluir());
    }
  }
}

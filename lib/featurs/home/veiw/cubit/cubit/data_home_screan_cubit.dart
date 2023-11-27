// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps

import 'package:bloc/bloc.dart';
import 'package:ecommerca_app/consts/faliur.dart';
import 'package:ecommerca_app/featurs/cart/data/repo/repo_cart.dart';
import 'package:ecommerca_app/featurs/home/data/repo/repo_apstract.dart';
import 'package:ecommerca_app/featurs/home/data/veiwmodel/model_categoris.dart';
import 'package:either_dart/either.dart';
import 'package:meta/meta.dart';

part 'data_home_screan_state.dart';

class DataHomeScreanCubit extends Cubit<DataHomeScreanState> {
  DataHomeScreanCubit(this.fetch) : super(DataHomeScreanInitial());

  final repo fetch;
  void fetcform_fir() async {
    emit(DataHomeScreanloading());
    Either<faliur, List<model_categorise>> data = await fetch.fecth_categoris();

    data.fold((left) {
      emit(DataHomeScreanfeil(left.error));
    }, (right) {
      emit(DataHomeScreansucces(right));
    });
  }
}

//////////////////////////////////ok////
///
class DataHomeScrean_bestCubit extends Cubit<DataHomeScreanState> {
  DataHomeScrean_bestCubit(this.fetch) : super(DataHomeScreanInitial());

  final repo fetch;
  void fetcform_fir(c, k, v, t) async {
    emit(DataHomeScreanloading());

    Either<faliur, List<model_product>> data =
        await fetch.fecth_best_saller(c, k, v, t);

    data.fold((left) {
      emit(DataHomeScreanfeil(left.error));
    }, (right) {
      print(right.length);
      emit(DataHomeScreansucces_best_saller(right));
    });
  }
}

class cart_add_cubit2 extends Cubit<DataHomeScreanState> {
  cart_add_cubit2(this.add_to_cart) : super(DataHomeScreanInitial());
  final add_to_db_ add_to_cart;

  void add_tocrt(model_product cart) async {
    emit(DataHomeScreanloading());

    int resp = await add_to_cart.add_to_db(cart);
    if (resp == 1) {
      emit(DataHomeScreansucces_added());
    } else {
      emit(DataHomeScreanfeil("sorry pleas try again"));
    }
  }
}

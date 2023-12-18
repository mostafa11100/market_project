// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps

import 'package:bloc/bloc.dart';
import 'package:ecommerca_app/consts/faliur.dart';
import 'package:ecommerca_app/featurs/cart/data/repo/repoimp_db.dart';
import 'package:ecommerca_app/featurs/home/data/repo/repo_apstract.dart';
import 'package:ecommerca_app/featurs/home/data/veiwmodel/model_categoris.dart';
import 'package:either_dart/either.dart';

// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'data_home_screan_state.dart';

class DataHomeScreanCubit extends Cubit<DataHomeScreanState> {
  DataHomeScreanCubit(this.fetch) : super(DataHomeScreanInitial());

  final repo fetch;
  void fetcform_fir() async {
    try {
      emit(DataHomeScreanloading());
      Either<faliur, List<model_categorise>> data =
          await fetch.fecth_categoris();

      data.fold((left) {
        emit(DataHomeScreanfeil(left.error));
      }, (right) {
        emit(DataHomeScreansucces(right));
      });
    } catch (e) {
      print("yss startt");
      emit(DataHomeScreanfeil(e.toString()));
    }
  }
}

class DataHomeScrean_bestCubit extends Cubit<DataHomeScreanState> {
  DataHomeScrean_bestCubit(this.fetch) : super(DataHomeScreanInitial());

  final repo fetch;

  void fetcform_fir(c, k, v, t) async {
    try {
      emit(DataHomeScreanloading());

      Either<faliur, List<model_product>> data =
          await fetch.fecth_best_saller(c, k, v, t);

      data.fold((left) {
        emit(DataHomeScreanfeil(left.error));
      }, (right) {
        print(right.length);
        emit(DataHomeScreansucces_best_saller(right));
      });
    } catch (e) {
      emit(DataHomeScreanfeil(e.toString()));
    }
  }
}

class cart_add_cubit2 extends Cubit<DataHomeScreanState> {
  int resp = 0;
  bool found = false;
  cart_add_cubit2(this.add_to_cart) : super(DataHomeScreanInitial());
  final DbrepoImp add_to_cart;

  void add_tocrt(model_product cart) async {
    emit(DataHomeScreanloading());

    Either<List<model_product?>, faliur> data = await add_to_cart.fetchFromDb();

    data.fold((left) async {
      if (left.isNotEmpty) {
        // ignore: avoid_function_literals_in_foreach_calls
        left.forEach((element) {
          if (cart.image == element!.image &&
              cart.details == element.details &&
              cart.size == element.size) {
            print("true");
            found = true;
          }
        });
      } else {
        print("true2");
        resp = await add_to_cart.addTodb(cart);
        found = true;
      }
      if (!found) {
        print("true3");
        resp = await add_to_cart.addTodb(cart);
      }

      if (resp == 1) {
        emit(DataHomeScreansucces_added());
      } else {
        emit(DataHomeScreanfeil("sorry pleas try again"));
      }
      //   emit(Cartsuccess(left.cast<model_product>(), total_price(left)));
    }, (right) {
      emit(DataHomeScreanfeil("sorry pleas try again"));
    });
  }
}

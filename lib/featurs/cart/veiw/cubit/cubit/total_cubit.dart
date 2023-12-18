import 'package:bloc/bloc.dart';
import 'package:ecommerca_app/consts/faliur.dart';
import 'package:ecommerca_app/featurs/cart/data/repo/repo_cart.dart';
import 'package:ecommerca_app/featurs/home/data/veiwmodel/model_categoris.dart';
import 'package:ecommerca_app/functions/total_price.dart';
import 'package:either_dart/either.dart';
import 'package:meta/meta.dart';

part 'total_state.dart';

class TotalCubit extends Cubit<TotalState> {
  TotalCubit(this.total) : super(TotalInitial());
  final repoabstract total;

  void gettotal() async {
    Either<List<model_product?>, faliur> response = await total.fetchFromDb();

    response.fold((left) {
      emit(Totalsucces(total_price(left)));
    }, (right) {
      print("erororororororoororo");
      emit(Totalfaluir(right.error));
    });
  }
}

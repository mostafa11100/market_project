import 'package:bloc/bloc.dart';
import 'package:ecommerca_app/featurs/check_out/data/repo/repof_ad.dart';
import 'package:meta/meta.dart';

part 'check_out_state.dart';

class CheckOutCubit extends Cubit<CheckOutState> {
  CheckOutCubit(this.check_imp) : super(CheckOutInitial());
  final repo_check_imp_add check_imp;
  void add(data, time_order) async {
    emit(CheckOutloading());
    bool response = await check_imp.add_data("order", "", data, time_order);
    if (response) {
      emit(CheckOutsuccess("Your product has been reserved"));
    } else {
      emit(CheckOutfaliur("An error has occurred. Please try again"));
    }
  }
}

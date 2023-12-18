import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'payment_chice_state.dart';

class PaymentChiceCubit extends Cubit<PaymentChiceState> {
  PaymentChiceCubit() : super(PaymentChiceInitial());
  void payment_type(int type) {
    emit(PaymentChice_done(type1: type));
  }
}

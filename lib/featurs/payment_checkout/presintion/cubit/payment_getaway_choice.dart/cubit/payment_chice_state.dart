part of 'payment_chice_cubit.dart';

@immutable
sealed class PaymentChiceState {}

final class PaymentChiceInitial extends PaymentChiceState {}

final class PaymentChice_done extends PaymentChiceState {
  PaymentChice_done({required this.type1});
  int type1 = 1;
}

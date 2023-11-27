part of 'payment_cubot_cubit.dart';

sealed class PaymentCubotState {}

final class PaymentCubotInitial extends PaymentCubotState {}

final class PaymentCubotloading extends PaymentCubotState {}

final class PaymentCubotsuccess extends PaymentCubotState {}

final class PaymentCubotfail extends PaymentCubotState {
  PaymentCubotfail(this.error);
  String? error;
}

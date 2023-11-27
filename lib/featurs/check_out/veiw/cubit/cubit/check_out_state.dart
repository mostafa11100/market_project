// ignore_for_file: must_be_immutable

part of 'check_out_cubit.dart';

@immutable
sealed class CheckOutState {
  String? message;
}

final class CheckOutInitial extends CheckOutState {}

final class CheckOutloading extends CheckOutState {}

final class CheckOutsuccess extends CheckOutState {
  CheckOutsuccess(this.message);
  @override
  // ignore: overridden_fields
  final String? message;
}

final class CheckOutfaliur extends CheckOutState {
  CheckOutfaliur(this.message);
  @override
  // ignore: overridden_fields
  final String? message;
}

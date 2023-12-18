// ignore_for_file: must_be_immutable

part of 'total_cubit.dart';

@immutable
sealed class TotalState {
  int? total = 0;
  String? message;
}

final class TotalInitial extends TotalState {}

final class Totalloading extends TotalState {}

final class Totalsucces extends TotalState {
  Totalsucces(this.total);
  @override
  int? total = 0;
}

final class Totalfaluir extends TotalState {
  Totalfaluir(this.message);
  @override
  String? message;
}

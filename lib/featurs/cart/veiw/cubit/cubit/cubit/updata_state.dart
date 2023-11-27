// ignore_for_file: must_be_immutable

part of 'updata_cubit.dart';

@immutable
sealed class UpdataState {
  int? total = 0;
}

final class UpdataInitial extends UpdataState {}

final class Updatloadin extends UpdataState {}

final class Updatasucces extends UpdataState {
  @override
  int? total;
}

final class Updatafaluir extends UpdataState {}

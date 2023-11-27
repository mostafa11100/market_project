// ignore_for_file: must_be_immutable

part of 'verify_cubit.dart';

@immutable
sealed class VerifyState {
  String message = "";
}

final class VerifyInitial extends VerifyState {}

final class Verifyloading extends VerifyState {}

final class Verifyfaliur extends VerifyState {
  Verifyfaliur(this.message);
  @override
  String message;
}

final class Verifysucces extends VerifyState {}

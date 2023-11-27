// ignore_for_file: must_be_immutable

part of 'log_in_cubit.dart';

@immutable
sealed class LogInState {
  bool state = false;
  String message = "";
}

final class LogInInitial extends LogInState {}

final class LogInfaliur extends LogInState {
  LogInfaliur(this.message);
  @override
  String message;
}

final class LogInloading extends LogInState {}

final class LogInsucces extends LogInState {
  LogInsucces(this.state);
  @override
  bool state;
  void checkstateandgo(Function() signup, Function() go) {
    if (state) {
      signup();
    } else
      go();
  }
}

part of 'forget_pasword_cubit.dart';

@immutable
sealed class ForgetPaswordState {}

final class ForgetPaswordInitial extends ForgetPaswordState {}

final class Forgetloading extends ForgetPaswordState {}

final class Forgetsucces extends ForgetPaswordState {
  void checkandgo(Function() go) {}
}

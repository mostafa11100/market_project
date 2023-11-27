// ignore_for_file: must_be_immutable

part of 'sign_up_cubit.dart';

@immutable
sealed class SignUpState {
  String message = "";
}

final class SignUpInitial extends SignUpState {}

final class SignUploading extends SignUpState {}

final class SignUpfaliur extends SignUpState {
  SignUpfaliur(this.message);
  @override
  String message;
}

final class SignUpsuccess extends SignUpState {
  @override
  String message =
      "Congratulations! Your account has been successfully created. Welcome aboard!";
}

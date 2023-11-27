import 'package:bloc/bloc.dart';
import 'package:ecommerca_app/consts/faliur.dart';
import 'package:ecommerca_app/featurs/auth/log_in/data/repo_data_imp.dart';
import 'package:ecommerca_app/featurs/auth/log_in/data/repo_imp_signinwithgoogl.dart';
import 'package:ecommerca_app/featurs/auth/log_in/data/signin_withfacebook.dart';
import 'package:either_dart/either.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

part 'log_in_state.dart';

class LogInCubit extends Cubit<LogInState> {
  LogInCubit(this.repo_imp) : super(LogInInitial());

  final repo_imp_signin repo_imp;

  void signin({required email, required pasword}) {
    emit(LogInloading());
    Future<Either<faliur, bool>> value =
        repo_imp.signin(email: email, pasword: pasword);
    value.fold((left) {
      emit(LogInfaliur(left.error));
    }, (right) {
      emit(LogInsucces(right));
    });
  }
}

// ignore: camel_case_types
class LogInCubit_googl extends Cubit<LogInState> {
  LogInCubit_googl(this.repo_imp) : super(LogInInitial());

  final sign_inwith_googl repo_imp;

  void signinwithgoogl() {
    emit(LogInloading());
    Future<Either<faliur, UserCredential>> value = repo_imp.signInWithGoogle();
    value.fold((left) {
      emit(LogInfaliur(left.error));
    }, (right) {
      emit(LogInsucces(right.user!.emailVerified));
    });
  }
}

class LogInCubit_face extends Cubit<LogInState> {
  LogInCubit_face(this.repo_imp) : super(LogInInitial());

  final sign_inwith_facebook repo_imp;

  void signinwithfacebook() {
    emit(LogInloading());
  }
}

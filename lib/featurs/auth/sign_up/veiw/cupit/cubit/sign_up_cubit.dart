import 'package:bloc/bloc.dart';
import 'package:ecommerca_app/consts/faliur.dart';
import 'package:ecommerca_app/featurs/auth/sign_up/data/repo_signUp.dart';
import 'package:either_dart/either.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.signup) : super(SignUpInitial());
  final repo_signup signup;

  void create(email, pasword) async {
    emit(SignUploading());
    Either<faliur, UserCredential> user = await signup.create(email, pasword);
    user.fold((left) {
      print("left = ${left.error}");
      emit(SignUpfaliur(left.error));
    }, (right) {
      print("left }");
      emit(SignUpsuccess());
    });
  }
}

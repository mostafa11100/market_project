import 'package:ecommerca_app/consts/faliur.dart';
import 'package:either_dart/either.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class repo_signin {
  Future<Either<faliur, bool>> signin({required email, required pasword});
  Future<Either<faliur, UserCredential>> signInWithGoogle();
}

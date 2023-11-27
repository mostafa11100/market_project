import 'package:ecommerca_app/consts/faliur.dart';
import 'package:either_dart/either.dart';
import 'package:firebase_auth/firebase_auth.dart';

class repo_signup {
  repo_signup(this.auth);

  final FirebaseAuth auth;

  Future<Either<faliur, UserCredential>> create(email, pasword) async {
    try {
      UserCredential user = await auth.createUserWithEmailAndPassword(
          email: email, password: pasword);

      return Right(user);
    } on FirebaseAuthException catch (e) {
      return Left(faliur.firebase_auth_error(e));
    } catch (e) {
      print(e.toString());
      return Left(faliur("oops please try again"));
    }
  }
}

import 'package:ecommerca_app/consts/faliur.dart';
import 'package:either_dart/either.dart';
import 'package:firebase_auth/firebase_auth.dart';

class verify {
  verify(this.auth);
  final FirebaseAuth auth;
  Future<Either<faliur, bool>> verifyemail() async {
    try {
      await auth.currentUser!.sendEmailVerification();
      return Right(true);
    } on FirebaseAuthException catch (e) {
      return Left(faliur.firebase_auth_error(e));
    } catch (e) {
      print(e.toString());
      return Left(faliur("oops please try again"));
    }
  }
}

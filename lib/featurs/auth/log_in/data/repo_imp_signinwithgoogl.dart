import 'package:ecommerca_app/consts/faliur.dart';
import 'package:ecommerca_app/featurs/auth/log_in/data/data_model.dart';
import 'package:either_dart/src/either.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class sign_inwith_googl extends repo_signin {
  @override
  @override
  Future<Either<faliur, UserCredential>> signInWithGoogle() async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      UserCredential user1 =
          await FirebaseAuth.instance.signInWithCredential(credential);
      // Once signed in, return the UserCredential
      return Right(user1);
    } on FirebaseAuthException catch (e) {
      return Left(faliur.firebase_auth_error(e));
    } catch (e) {
      return Left(faliur("please try again"));
    }
  }

  @override
  Future<Either<faliur, bool>> signin({required email, required pasword}) {
    // TODO: implement signin
    throw UnimplementedError();
  }

  @override
  Future<Either<faliur, UserCredential>> signInWithFacebook() {
    // TODO: implement signInWithFacebook
    throw UnimplementedError();
  }
}

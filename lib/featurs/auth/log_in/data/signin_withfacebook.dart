import 'package:ecommerca_app/consts/faliur.dart';
import 'package:ecommerca_app/featurs/auth/log_in/data/data_model.dart';
import 'package:either_dart/src/either.dart';
import 'package:firebase_auth/firebase_auth.dart';

class sign_inwith_facebook extends repo_signin {
  // @override
  // Future<Either<faliur, UserCredential>> signInWithFacebook() async {
  //   // try {
  //   //   // Trigger the sign-in flow
  //   //   final LoginResult loginResult =
  //   //       await FacebookAuth.instance.login(permissions: ['email']);

  //   //   // Create a credential from the access token
  //   //   final OAuthCredential facebookAuthCredential =
  //   //       FacebookAuthProvider.credential(loginResult.accessToken!.token);
  //   //   // Once signed in, return the UserCredential
  //   //   var use = await FirebaseAuth.instance
  //   //       .signInWithCredential(facebookAuthCredential);
  //   //   return Right(use);
  //   // } on FirebaseAuthException catch (e) {
  //   //   return Left(faliur.firebase_auth_error(e));
  //   // } catch (e) {
  //   //   return Left(faliur(e.toString()));
  //   // }
  // }

  @override
  Future<Either<faliur, bool>> signin({required email, required pasword}) {
    // TODO: implement signin
    throw UnimplementedError();
  }

  @override
  Future<Either<faliur, UserCredential>> signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }
}

import 'package:firebase_auth/firebase_auth.dart';

class send_pasword {
  send_pasword(this.auth);
  final FirebaseAuth auth;
  send_pas(email) async {
    try {
      await auth.sendPasswordResetEmail(email: email);
    } catch (e) {
      print(e);
    }
  }
}

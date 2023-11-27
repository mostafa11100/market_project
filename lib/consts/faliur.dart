class faliur {
  faliur(this.error);
  final String error;

  // ignore: non_constant_identifier_names
  factory faliur.firebase_auth_error(fireerror) {
    var eror = fireerror;
    print("enter");
    switch (eror.code) {
      case 'email-already-in-use':
        return faliur('email-already-in-use');

      case 'operation-not-allowed':
        return faliur('operation-not-allowed');

      case 'user-disabled':
        return faliur('user-disabled');

      case 'too-many-requests':
        return faliur('too-many-requests');

      case 'weak-password':
        return faliur('weak-password');
      case 'wrong-password':
        return faliur('wrong-password');
      case 'user-not-found':
        return faliur('user-not-found');
      case 'user-disabled':
        return faliur('user-disabled');

      case 'invalid-email':
        return faliur("ERROR_INVALID_EMAIL");
      case "ERROR_WRONG_PASSWORD":
        return faliur("ERROR_WRONG_PASSWORD");
      case "INVALID_LOGIN_CREDENTIALS":
        return faliur(" INVALID_LOGIN_CREDENTIALS");

      case 'not-found':
        return faliur("sorry not foud");
      case 'permission-denied':
        return faliur("permission denied");
      case 'resource-exhausted':
        return faliur("resources exhausted");
      case 'failed-precondition':
        return faliur("faild precondition");
      case 'aborted':
        return faliur("aborted");
      case 'out-of-range':
        return faliur('خارج النطاق.');
      case 'unimplemented':
        return faliur('غير مُنفّذ.');
      case 'internal':
        return faliur('خطأ داخلي.');
      case 'unavailable':
        return faliur('غير متاح.');
      case 'data-loss':
        return faliur('فقدان بيانات.');

      default:
        print(eror);
        return faliur(" check intern net and try again");
    }
  }
}

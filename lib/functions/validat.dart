import 'package:email_validator/email_validator.dart';

String empty = "Enter Email";
String uncrrect = "un correct Email";
String? validator(v) {
  if (v!.isEmpty) {
    return empty;
  }
  if (!EmailValidator.validate(v)) {
    return uncrrect;
  }
  return null;
}

String emptypas = "Enter pasowrd";
String uncrrecpasword = "sorry pasword can't less than 6";
String? validator_pasword(String? v) {
  if (v!.isEmpty) {
    return emptypas;
  }
  if (v.toString().length < 6) {
    return uncrrecpasword;
  }
  return null;
}

String? namevalidator(v) {
  if (v!.isEmpty) {
    return empty;
  }

  return null;
}

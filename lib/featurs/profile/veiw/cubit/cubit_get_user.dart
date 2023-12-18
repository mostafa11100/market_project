import 'package:ecommerca_app/classes/shared_pref.dart';
import 'package:ecommerca_app/featurs/profile/data/model_user.dart';

class GetUser {
  String? name;
  String? email;
  String? photo;
  void getdata() async {
    modecl_user user = await Shared.get_user_from_sharedd();
    name = user.name;
    email = user.email;
    photo = user.photo == "" ? "" : user.photo;
  }

  GetUser() {
    getdata();
  }
}

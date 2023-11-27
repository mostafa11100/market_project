import 'package:ecommerca_app/classes/shared_pref.dart';
import 'package:ecommerca_app/featurs/profile/data/model_user.dart';

class get_user {
  String? name;
  String? email;
  String? photo;
  void getdata() async {
    modecl_user user = await shared1.get_user_from_sharedd();
    name = user.name;
    email = user.email;
    photo = user.photo == "" ? "assets/empty.PNG" : user.photo;
  }

  get_user() {
    getdata();
  }
}

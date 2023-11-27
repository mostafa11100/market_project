// ignore_for_file: unused_local_variable

import 'package:ecommerca_app/featurs/profile/data/model_user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class shared1 {
  static SharedPreferences? sharedp;

  static void add(name, photo, email) async {
    sharedp = await SharedPreferences.getInstance();
    await sharedp?.setString("name", name);
    await sharedp?.setString("photo", photo);
    await sharedp?.setString("email", email);
  }

  static Future<modecl_user> get_user_from_sharedd() async {
    Map<String, dynamic> json;
    sharedp = await SharedPreferences.getInstance();
    String? name = sharedp!.getString("name");
    String? email = sharedp!.getString("email");
    String? photo = sharedp!.getString("photo");

    return modecl_user.tojson(name, photo, email);
  }

  static Future<bool> check_(kay) async {
    sharedp = await SharedPreferences.getInstance();
    if (sharedp!.get(kay) != null) return true;

    return false;
  }
}

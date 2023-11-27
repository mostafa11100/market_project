// ignore_for_file: camel_case_types

import 'package:ecommerca_app/consts/faliur.dart';
import 'package:ecommerca_app/featurs/auth/sign_up/data/model_data/sava_model.dart';
import 'package:ecommerca_app/featurs/shared_get_useracount/repo_get_.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class save_user {
  save_user(
    this.auth,
  );
  var db = FirebaseFirestore.instance;
  FirebaseAuth auth;
  save_model? model;

  /////
  Future<bool> save(String? name) async {
    try {
      String? name2 = name ?? auth.currentUser!.displayName.toString();
      String? email = auth.currentUser!.email;
      String? uid = auth.currentUser!.uid;

      model = save_model(name2, email, "", uid);

      CollectionReference<Map<String, dynamic>> col = db.collection("user");

      await col.doc(auth.currentUser!.uid).set(model!.tojson());
      add_user.add_to_shared(email, "user");
      return true;
    } on FirebaseException catch (e) {
      print(faliur.firebase_auth_error(e).error);
      return false;
    }
  }
}

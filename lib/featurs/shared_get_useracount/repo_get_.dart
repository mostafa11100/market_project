import 'package:cloud_firestore/cloud_firestore.dart';
// ignore: implementation_imports
import 'package:either_dart/src/either.dart';

import 'package:ecommerca_app/classes/firebase_/firebase_fetch_data.dart';
import 'package:ecommerca_app/classes/shared_pref.dart';
import 'package:ecommerca_app/consts/faliur.dart';

// ignore: camel_case_types
class repo_getuser {
  static Future<Map<String, dynamic>> getdata(email, collection) async {
    Either<faliur, List<QueryDocumentSnapshot<Map<String, dynamic>>>>? getuser =
        await fetc_fromfirebase.fecth_data(collection, '', '', false);
    Map<String, dynamic> map = {};
    getuser!.fold((left) {}, (right1) {
      for (var element in right1) {
        if (element.data()['email'] == email) {
          map = element.data();
        }
      }
    });
    return map;
  }
}

// ignore: camel_case_types
class add_user {
  // ignore: non_constant_identifier_names
  static void add_to_shared(email, collection) async {
    Map<String, dynamic> map = await repo_getuser.getdata(email, collection);
    if (map != {}) {
      String? name = map['name'];
      String? photo = map['photo'];
      String? emaiil = map['email'];
      Shared.add(name, photo, emaiil);
    }
  }
}

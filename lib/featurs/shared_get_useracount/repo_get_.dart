import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerca_app/classes/firebase_/firebase_fetch_data.dart';
import 'package:ecommerca_app/classes/shared_pref.dart';
import 'package:ecommerca_app/consts/faliur.dart';
import 'package:either_dart/src/either.dart';

class repo_getuser {
  static Future<Map<String, dynamic>> getdata(email, collection) async {
    Either<faliur, List<QueryDocumentSnapshot<Map<String, dynamic>>>>? getuser =
        await fetc_fromfirebase.fecth_data(collection, '', '', false);
    Map<String, dynamic> map = {};
    getuser!.fold((left) {}, (right1) {
      right1.forEach((element) {
        if (element.data()['email'] == email) {
          print(element);
          map = element.data();
        }
      });
    });
    return map;
  }
}

class add_user {
  static void add_to_shared(email, collection) async {
    Map<String, dynamic> map = await repo_getuser.getdata(email, collection);
    if (map != {}) {
      String? name = map['name'];
      String? photo = map['photo'];
      String? emaiil = map['email'];
      shared1.add(name, photo, emaiil);
    } else
      print(map);
  }
}

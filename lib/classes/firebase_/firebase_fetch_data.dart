// ignore_for_file: camel_case_types

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerca_app/classes/firebase_/firebase_search.dart';
import 'package:ecommerca_app/consts/faliur.dart';
import 'package:either_dart/either.dart';
import 'package:firebase_auth/firebase_auth.dart';

class fetc_fromfirebase {
  static QuerySnapshot<Map<String, dynamic>>? fetch;
  // ignore: non_constant_identifier_names
  static Future<
          Either<faliur, List<QueryDocumentSnapshot<Map<String, dynamic>>>>?>
      fecth_data(collection, k, v, type) async {
    print("fire1");
    try {
      if (type == true) {
        print("fire2");
        return await search_in_firebase.fecth_data(collection, k, v);
      } else {
        print("fire3");
        try {
          fetch = await FirebaseFirestore.instance.collection(collection).get();
        } catch (e) {
          print("enter in fir 3");
        }
        print("fire4");
        List<QueryDocumentSnapshot<Map<String, dynamic>>>? docs = fetch?.docs;
        // print(docs);
        print("fire5  ${docs!.length}");
        return Right(docs!);
      }
    } on FirebaseAuthMultiFactorException catch (e) {
      print("fffffff");
      return Left(faliur.firebase_auth_error(e));
    } catch (e) {
      return Left(faliur(e.toString()));
    }
  }
}

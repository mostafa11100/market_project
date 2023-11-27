import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class firebase_add_data {
  FirebaseFirestore? firebase;

  Future<bool> add_data(collection, doc, Map<String, dynamic> data) async {
    try {
      firebase = FirebaseFirestore.instance;
      await firebase!.collection(collection).add(data);
      return true;
    } on FirebaseException catch (e) {
      print("check_error adddata == $e");
      return false;
    }
  }
}

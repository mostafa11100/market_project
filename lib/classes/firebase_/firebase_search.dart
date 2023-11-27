import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerca_app/consts/faliur.dart';
import 'package:either_dart/either.dart';
import 'package:firebase_auth/firebase_auth.dart';

class search_in_firebase {
  static QuerySnapshot<Map<String, dynamic>>? fetch;
  // ignore: non_constant_identifier_names
  static Future<
          Either<faliur, List<QueryDocumentSnapshot<Map<String, dynamic>>>>?>
      fecth_data(collection, k, v) async {
    try {
      fetch = await FirebaseFirestore.instance
          .collection(collection)
          .where(k, isEqualTo: v)
          .get();

      List<QueryDocumentSnapshot<Map<String, dynamic>>>? docs = fetch?.docs;

      return Right(docs!);
    } on FirebaseAuthMultiFactorException catch (e) {
      return Left(faliur.firebase_auth_error(e));
    } catch (e) {
      print("rrrrr = = = $e");
      return Left(faliur(e.toString()));
    }
  }
}

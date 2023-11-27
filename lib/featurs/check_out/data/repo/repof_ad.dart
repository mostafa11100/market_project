// ignore_for_file: non_constant_identifier_names, duplicate_ignore

import 'package:ecommerca_app/classes/firebase_/firebase_add_data.dart';
import 'package:ecommerca_app/consts/faliur.dart';
import 'package:ecommerca_app/featurs/cart/data/repo/repo_cart.dart';
import 'package:ecommerca_app/featurs/check_out/data/model_delivery/address_model.dart';
import 'package:ecommerca_app/featurs/check_out/data/model_delivery/model.dart';
import 'package:ecommerca_app/featurs/home/data/veiwmodel/model_categoris.dart';
import 'package:either_dart/either.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class repo_check {
  fectchdata();
  Future<bool> add_data(collection, doc, address data, time_order);
}

class repo_check_imp_add extends repo_check {
  // ignore: non_constant_identifier_names
  firebase_add_data? firebase_add;
  repo_imp_fetch_cart? cart;
  order_model? model;
  List<model_product?>? m_p;
  FirebaseAuth? fir;
  // ignore: non_constant_identifier_names
  @override
  Future<bool> add_data(collection, doc, data, time_order) async {
    try {
      firebase_add = firebase_add_data();

      fir = FirebaseAuth.instance;

      String? uid = fir!.currentUser!.email;

      cart = repo_imp_fetch_cart();

      Either<List<model_product?>, faliur> cart_data =
          await cart!.fetch_from_database();

      cart_data.fold((left) {
        m_p = left;
      }, (right) {
        return false;
      });

      model = order_model.tojson(time_order, data, m_p, uid);
      return await firebase_add!.add_data(collection, doc, model!.json!);
    } catch (e) {
      print("error = $e");
      return false;
    }
  }

  @override
  fectchdata() {
    throw UnimplementedError();
  }
}

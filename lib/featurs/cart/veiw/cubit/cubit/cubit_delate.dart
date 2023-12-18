// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:ecommerca_app/featurs/cart/data/repo/repoimp_db.dart';
import 'package:ecommerca_app/featurs/home/data/veiwmodel/model_categoris.dart';

class delate {
  delate.delate_fdb(model_product cart) {
    DbrepoImp delatefdb = DbrepoImp();
    delatefdb.delateRow(cart).then((value) {
      return value;
    });
  }
}

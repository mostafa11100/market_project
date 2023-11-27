import 'package:ecommerca_app/featurs/cart/data/repo/repo_cart.dart';
import 'package:ecommerca_app/featurs/home/data/veiwmodel/model_categoris.dart';

class delate {
  delate.delate_fdb(model_product cart) {
    delate_fromdb delatefdb = delate_fromdb();
    delatefdb.delate_row(cart).then((value) {
      print("is delate===== $value");
      return value;
    });
  }
}

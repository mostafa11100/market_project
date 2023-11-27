// ignore_for_file: avoid_function_literals_in_foreach_calls, unused_local_variable

import 'package:ecommerca_app/featurs/check_out/data/model_delivery/address_model.dart';
import 'package:ecommerca_app/featurs/home/data/veiwmodel/model_categoris.dart';

// ignore: camel_case_types
class order_model {
  // ignore: non_constant_identifier_names
  String? time_delivey;
  address? addres;
  List<model_product?>? list_product = [];
  String? user_uid;
  Map<String, dynamic>? json = {};
  List<Map<String, dynamic>>? list_json = [];
  List? list_ = [];
  Map<String, dynamic>? map = {};

  order_model.tojson(
      this.time_delivey, this.addres, this.list_product, this.user_uid) {
    int i = 0;

    json!['address'] = addres!.json;

    list_product!.forEach((element) {
      map!['count'] = element!.count;
      map!['image'] = element.image;
      map!['color'] = element.color;
      map!['price'] = element.price;
      map!['size'] = element.size;
      map!['categoris_name'] = element.type;
      print(map.toString());
      list_json!.add(map!);
    });

    json!["time_delivey"] = time_delivey;
    json!['product'] = list_json;
    json!['user_uid'] = user_uid;
    print("pefoore  ${addres!.city}");
    json!['address'] = addres!.json;
  }
}

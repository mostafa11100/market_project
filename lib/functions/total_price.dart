// ignore_for_file: non_constant_identifier_names, unused_local_variable

import 'package:ecommerca_app/featurs/home/data/veiwmodel/model_categoris.dart';

int total_price(List<model_product?> list) {
  int total = 0;

  int x = 0;
  list.forEach((element) {
    total += element!.price! * element.count;
  });

  return total;
}

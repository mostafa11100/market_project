// ignore_for_file: unused_local_variable, non_constant_identifier_names

import 'package:ecommerca_app/consts/faliur.dart';
import 'package:ecommerca_app/featurs/home/data/veiwmodel/model_categoris.dart';
import 'package:either_dart/either.dart';

// ignore: camel_case_types
abstract class repoabstract {
  Future<Either<List<model_product?>, faliur>> fetchFromDb();
  Future<int> addTodb(model_product cart);
  Future<int> updata(model_product cart);
  Future<int> delateRow(cart);
}

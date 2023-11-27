// ignore_for_file: unused_local_variable, non_constant_identifier_names

import 'package:ecommerca_app/classes/data_base_intialize.dart';
import 'package:ecommerca_app/consts/faliur.dart';
import 'package:ecommerca_app/featurs/home/data/veiwmodel/model_categoris.dart';
import 'package:either_dart/either.dart';

abstract class repoabstract {
  Future<Either<List<model_product?>, faliur>> fetch_from_database();
  Future<int> add_to_db(model_product cart);
  Future<int> updata(model_product cart);
  Future<int> delate_row(cart);
}

// ignore: camel_case_types
class repo_imp_fetch_cart extends repoabstract {
  String query = 'SELECT * FROM test';

  db_? db;
  @override
  Future<Either<List<model_product?>, faliur>> fetch_from_database() async {
    try {
      db = db_();
      List<model_product>? list_cart = [];
      List<Map<String, Object?>>? response =
          await db?.rowqwer("SELECT * FROM test", []);
      response?.forEach((element) {
        list_cart.add(model_product.fromjson(element));
      });

      list_cart.forEach((element) {});
      return Left(list_cart);
    } catch (e) {
      print("errorrrroror== $e");
      return Right(faliur("oops please try again"));
    }
  }

  Future<int> add_to_db(model_product cart) {
    // TODO: implement add_to_db
    throw UnimplementedError();
  }

  @override
  Future<int> updata(model_product cart) {
    // TODO: implement updata
    throw UnimplementedError();
  }

  @override
  Future<int> delate_row(cart) {
    // TODO: implement delate_row
    throw UnimplementedError();
  }
}

class add_to_db_ extends repoabstract {
  String query_insert = '''INSERT INTO 'cart'(
name ,details,count ,
 image ,color,price,
size,category_name)VALUES(?,?,?,?,?,?,?,?)
 ''';
  db_? db1;
  @override
  Future<int> add_to_db(model_product cart) async {
    try {
      db1 = db_();

      //   await db1?.db;
      int? st = await db1?.insert_(query_insert, cart);
      return st!;
    } catch (e) {
      return -1;
    }
  }

  @override
  Future<Either<List<model_product?>, faliur>> fetch_from_database() {
    // TODO: implement fetch_from_database
    throw UnimplementedError();
  }

  @override
  Future<int> updata(model_product cart) {
    // TODO: implement updata
    throw UnimplementedError();
  }

  @override
  Future<int> delate_row(cart) {
    // TODO: implement delate_row
    throw UnimplementedError();
  }
}

class updata_data extends repoabstract {
  @override
  Future<int> add_to_db(model_product cart) {
    // TODO: implement add_to_db
    throw UnimplementedError();
  }

  @override
  Future<Either<List<model_product?>, faliur>> fetch_from_database() {
    // TODO: implement fetch_from_database
    throw UnimplementedError();
  }

  @override
  Future<int> updata(model_product cart) async {
    db_ database = db_();

    int res = await database.updat_db(
        'test',
        {
          'name': cart.name,
          'details': cart.details,
          'price': cart.price,
          'image': cart.image,
          'color': cart.color,
          'category_name': cart.type,
          'count': cart.count,
          'size': cart.size
        },
        "name = ?",
        [cart.name]);
    return res;
  }

  @override
  Future<int> delate_row(cart) {
    // TODO: implement delate_row
    throw UnimplementedError();
  }
}

class delate_fromdb extends repoabstract {
  @override
  Future<int> add_to_db(model_product cart) {
    // TODO: implement add_to_db
    throw UnimplementedError();
  }

  @override
  Future<int> delate_row(cart) async {
    db_ database = db_();
    int resp = await database.delet_row("test", "name=?", [cart.name]);
    return resp;
  }

  @override
  Future<Either<List<model_product?>, faliur>> fetch_from_database() {
    // TODO: implement fetch_from_database
    throw UnimplementedError();
  }

  @override
  Future<int> updata(model_product cart) {
    // TODO: implement updata
    throw UnimplementedError();
  }
}

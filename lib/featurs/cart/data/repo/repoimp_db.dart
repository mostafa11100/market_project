import 'package:ecommerca_app/classes/data_base_intialize.dart';
import 'package:ecommerca_app/consts/database_query.dart';
import 'package:ecommerca_app/consts/faliur.dart';
import 'package:ecommerca_app/featurs/cart/data/repo/repo_cart.dart';
import 'package:ecommerca_app/featurs/home/data/veiwmodel/model_categoris.dart';
import 'package:either_dart/either.dart';

class DbrepoImp extends repoabstract {
  Db? db1;

  @override
  Future<int> addTodb(model_product cart) async {
    try {
      db1 = Db();
      int? st = await db1?.insert_(query_insert, cart);
      return st!;
    } catch (e) {
      return -1;
    }
  }

  @override
  Future<int> delateRow(cart) async {
    Db database = Db();
    int resp = await database.delet_row("test", "name=?", [cart.name]);
    return resp;
  }

  @override
  Future<Either<List<model_product?>, faliur>> fetchFromDb() async {
    try {
      db1 = Db();
      List<model_product>? listCart = [];
      List<Map<String, Object?>>? response =
          await db1?.rowqwer("SELECT * FROM test", []);
      response?.forEach((element) {
        listCart.add(model_product.fromjson(element));
      });

      // ignore: unused_local_variable
      for (var element in listCart) {}
      return Left(listCart);
    } catch (e) {
      return Right(faliur("oops please try again"));
    }
  }

  @override
  Future<int> updata(model_product cart) async {
    Db database = Db();

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
}

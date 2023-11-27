// ignore_for_file: non_constant_identifier_names, unused_local_variable

import 'package:ecommerca_app/featurs/home/data/veiwmodel/model_categoris.dart';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

String createdb =
    'CREATE TABLE Test  (name TEXT, details TEXT,  count INTEGER ,image TEXT, color TEXT,    price INTEGER , size INTEGER ,category_name TEXT)';

String created2 =
    'CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, sum TEXT, num REAL  )';

class db_ {
  Database? _db;

  Future<Database?> get getdb async {
    _db = await create_cb();
    // if (db_ == Null) {
    //   _db = await create_cb();
    //   return _db;
    // } else {
    //   _db = await open_database();
    return _db;
    // }
  }

  Future<Database> create_cb() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'demo.db');

    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      print("create again  $createdb");
      await db.execute(createdb);
    });

    return database;
  }

  Future<List<Map<String, Object?>>?> rowqwer(sql, List values) async {
    Database? db_q = await getdb;
    List<Map<String, Object?>>? data = await db_q!.rawQuery(sql, values);
    return data;
  }

  Future<int?> insert_(sql, model_product values) async {
    try {
      Database? db_q = await getdb;
      int? response = 0;
      String inser_code = ''' INSERT INTO  test (
     name, details, count,
     image, color, price,
     size, category_name
   ) VALUES (?, ?, ?, ?, ?, ?,?, ?) ''';
      await db_q?.transaction((txn) async {
        response = await txn.rawInsert(inser_code, values.list_cart);
      });

      return response;
    } on DatabaseException catch (e) {
      print("eror db $e");
      return 0;
    }
  }

  Future<bool> deletdatabase() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'demo.db');

    await deleteDatabase(path);
    bool xx = await databaseExists(path);

    return xx;
  }

  Future<int> delet_row(table, where, arg) async {
    Database? database = await getdb;
    int respo = await database!.delete(table, where: where, whereArgs: arg);
    return respo;
  }

  Future<int> updat_db(String table, map, wheree, wherearg) async {
    Database? db_q = await getdb;
    int response =
        await db_q!.update(table, map, where: wheree, whereArgs: wherearg);

    return response;
  }

  Future<void> deleteDatabaseFile() async {
    final databasesPath = await getDatabasesPath();
    final dbPath = join(databasesPath, "ecomerca_app.db"); // اسم قاعدة البيانات
    await deleteDatabase(dbPath);
  }
}

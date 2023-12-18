// ignore_for_file: non_constant_identifier_names, unused_local_variable

import 'package:ecommerca_app/consts/database_qeury.dart';

import 'package:sqflite/sqflite.dart';

import 'package:ecommerca_app/featurs/home/data/veiwmodel/model_categoris.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';

class Db {
  Database? _db;

  Future<Database?> get getdb async {
    _db = await create_cb();

    return _db;
  }

  Future<Database> create_cb() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'demo.db');

    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
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

      await db_q?.transaction((txn) async {
        response = await txn.rawInsert(sql, values.list_cart);
      });

      return response;
    } on DatabaseException catch (e) {
      // ignore: avoid_print
      print(e);
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

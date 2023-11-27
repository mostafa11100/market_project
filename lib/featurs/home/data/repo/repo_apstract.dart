// ignore_for_file: camel_case_types

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerca_app/classes/firebase_/firebase_fetch_data.dart';
import 'package:ecommerca_app/consts/faliur.dart';
import 'package:ecommerca_app/featurs/home/data/veiwmodel/model_categoris.dart';
import 'package:either_dart/either.dart';

abstract class repo {
  Future<Either<faliur, List<model_categorise>>> fecth_categoris();
  Future<Either<faliur, List<model_product>>> fecth_best_saller(c, k, v, t);
}

class repo_fetchdata_imp extends repo {
  @override
  Future<Either<faliur, List<model_categorise>>> fecth_categoris() async {
    List<model_categorise> lM = [];

    faliur? f;

    Either<faliur, List<QueryDocumentSnapshot<Map<String, dynamic>>>>? data =
        await fetc_fromfirebase.fecth_data("categorise", '', '', false);
    data?.fold((left) {
      f = left;
    }, (right) {
      right.forEach((element) {
        lM.add(model_categorise.fromjson(element.data()));
      });
    });
    if (f == null)
      return Right(lM);
    else {
      return Left(f!);
    }
  }

  @override
  Future<Either<faliur, List<model_product>>> fecth_best_saller(c, k, v, t) {
    // TODO: implement fecth_best_saller
    throw UnimplementedError();
  }
}

class repo_imp_fetchPest_s extends repo {
  @override
  Future<Either<faliur, List<model_product>>> fecth_best_saller(
      c, k, v, t) async {
    List<model_product> lM = [];

    faliur? f;
    try {
      Either<faliur, List<QueryDocumentSnapshot<Map<String, dynamic>>>>? data =
          await fetc_fromfirebase.fecth_data(c, k, v, t);

      data?.fold((left) {
        f = left;
      }, (right) {
        right.forEach((element) {
          lM.add(model_product.fromjson(element.data()));
        });
      });
      if (f == null) {
        return Right(lM);
      } else {
        return Left(f!);
      }
    } catch (e) {
      print(e);
      return Left(faliur(e.toString()));
    }
  }

  @override
  Future<Either<faliur, List<model_categorise>>> fecth_categoris() {
    // TODO: implement fecth_categoris
    throw UnimplementedError();
  }
}

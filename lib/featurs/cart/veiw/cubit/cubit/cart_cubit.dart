// ignore_for_file: await_only_futures

import 'package:bloc/bloc.dart';
import 'package:ecommerca_app/consts/faliur.dart';
import 'package:ecommerca_app/featurs/cart/data/repo/repo_cart.dart';
import 'package:ecommerca_app/featurs/home/data/veiwmodel/model_categoris.dart';
import 'package:ecommerca_app/functions/total_price.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit(this.repo_fetch) : super(CartInitial());
  final repoabstract repo_fetch;
  void getcart_data() async {
    emit(Cartloading());
    Either<List<model_product?>, faliur> data =
        await repo_fetch.fetch_from_database();

    data.fold((left) {
      if (left.isNotEmpty) {
        emit(Cartsuccess(left.cast<model_product>(), total_price(left)));
      } else {
        emit(Cartnull());
      }
    }, (right) {
      emit(Cartfeil(right.error));
    });
  }
}

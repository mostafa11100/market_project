// ignore_for_file: must_be_immutable

part of 'cart_cubit.dart';

@immutable
sealed class CartState {
  late final String? message = "";
  int? total;
  late final List<model_product>? data;
}

final class CartInitial extends CartState {}

final class Cartloading extends CartState {}

final class Cartsuccess extends CartState {
  Cartsuccess(this.data, this.total);
  @override
  final List<model_product>? data;
  @override
  final int? total;
}

final class Cartnull extends CartState {}

final class Cartfeil extends CartState {
  final String message;
  Cartfeil(this.message);
}

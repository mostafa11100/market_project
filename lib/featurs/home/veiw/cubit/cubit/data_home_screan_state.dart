// ignore_for_file: must_be_immutable

part of 'data_home_screan_cubit.dart';

@immutable
sealed class DataHomeScreanState {
  List<model_categorise> list_model = [];
  List<model_product> list_model_best_product = [];
}

final class DataHomeScreanInitial extends DataHomeScreanState {}

final class DataHomeScreanloading extends DataHomeScreanState {}

final class DataHomeScreansucces extends DataHomeScreanState {
  DataHomeScreansucces(this.list_model);
  List<model_categorise> list_model;
}

final class DataHomeScreansucces_added extends DataHomeScreanState {}

final class DataHomeScreansucces_best_saller extends DataHomeScreanState {
  DataHomeScreansucces_best_saller(this.list_model_best_product);
  @override
  List<model_product> list_model_best_product;
}

final class DataHomeScreanfeil extends DataHomeScreanState {
  DataHomeScreanfeil(this.message);
  String message;
}

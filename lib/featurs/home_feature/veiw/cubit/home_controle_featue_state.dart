// ignore_for_file: must_be_immutable

part of 'home_controle_featue_cubit.dart';

@immutable
sealed class HomeControleFeatueState {
  int index = 0;
}

final class HomeControleFeatueInitial extends HomeControleFeatueState {
  @override
  int index = 0;
}

final class HomeControleFeatuechange extends HomeControleFeatueState {
  HomeControleFeatuechange(this.index);
  @override
  int index = 0;
}

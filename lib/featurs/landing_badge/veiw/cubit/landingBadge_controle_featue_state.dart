// ignore_for_file: must_be_immutable, overridden_fields

part of 'landingBadge_controle_featue_cubit.dart';

@immutable
sealed class LandingControleFeatueState {
  int index = 0;
}

final class LandingControleFeatueInitial extends LandingControleFeatueState {
  @override
  int index = 0;
}

final class LandingControleFeatuechange extends LandingControleFeatueState {
  LandingControleFeatuechange(this.index);
  @override
  int index = 0;
}

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'landingBadge_controle_featue_state.dart';

class LandingControleFeatueCubit extends Cubit<LandingControleFeatueState> {
  LandingControleFeatueCubit() : super(LandingControleFeatueInitial());

  void goto_screan(index) {
    emit(LandingControleFeatuechange(index));
  }
}

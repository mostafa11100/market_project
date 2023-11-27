import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_controle_featue_state.dart';

class HomeControleFeatueCubit extends Cubit<HomeControleFeatueState> {
  HomeControleFeatueCubit() : super(HomeControleFeatueInitial());

  void goto_screan(index) {
    emit(HomeControleFeatuechange(index));
  }
}

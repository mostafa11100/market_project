import 'package:bloc/bloc.dart';
import 'package:ecommerca_app/featurs/auth/verifyh_email/data/repo_verify_email.dart';
import 'package:meta/meta.dart';

part 'verify_state.dart';

class VerifyCubit extends Cubit<VerifyState> {
  VerifyCubit(this.sendeverify) : super(VerifyInitial());
  final verify sendeverify;

  void sendverifyemail() async {
    emit(Verifyloading());
    var sta = await sendeverify.verifyemail();
    sta.fold((left) {
      emit(Verifyfaliur(left.error));
    }, (right) {
      emit(Verifysucces());
    });
  }
}

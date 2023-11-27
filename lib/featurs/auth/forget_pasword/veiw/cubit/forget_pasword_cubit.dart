import 'package:bloc/bloc.dart';
import 'package:ecommerca_app/featurs/auth/forget_pasword/data/repo_send_pasword.dart';
import 'package:meta/meta.dart';

part 'forget_pasword_state.dart';

class ForgetPaswordCubit extends Cubit<ForgetPaswordState> {
  ForgetPaswordCubit(this.send) : super(ForgetPaswordInitial());

  send_pasword send;
  void sendpasword(email) async {
    emit(Forgetloading());
    await send.send_pas(email);
    emit(Forgetsucces());
  }
}

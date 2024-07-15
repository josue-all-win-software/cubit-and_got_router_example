import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> login() async {
    emit(LoginLoading());

    await Future.delayed(
      const Duration(seconds: 3)
    );

    emit(LoginSuccess());
  }
}

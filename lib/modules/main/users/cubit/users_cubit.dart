import 'package:cubit_example/domain/models/new_user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'users_state.dart';

class UsersCubit extends Cubit<UsersState> {
  UsersCubit() : super(UsersInitial());

  Future<void> saveUser({
    required NewUser newUser
  }) async {
    emit(UsersLoading());

    await Future.delayed(
      const Duration(seconds: 3)
    );

    emit(UsersSuccess());
  }
}

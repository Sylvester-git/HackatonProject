import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:sqaure_project/data/Repository/FirebaseAuth.dart';
import 'package:sqaure_project/packages.dart';

part 'logn_state.dart';

class LognCubit extends Cubit<LoginState> {
  final AuthRepo _authRepo;
  LognCubit(this._authRepo) : super(LoginState.initialize());

  Future<void> login({required String email, required String password}) async {
    if (state.status == LoginStatus.submitting) return;
    emit(state.copyWith(status: LoginStatus.submitting));
    try {
      await _authRepo.login(
        email: email,
        password: password,
      );
      emit(
        state.copyWith(status: LoginStatus.success),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: LoginStatus.errror,
          errorMessage: e.toString().contains('user-not-found')
              ? 'User does not exist'
              : e.toString().contains('wrong-password')
                  ? 'Incorrect Password'
                  : e.toString().contains('network-request-failed')
                      ? 'No internet connetion'
                      : e.toString().contains('user-disabled')
                          ? 'This account has been disabled'
                          : e.toString(),
        ),
      );
    }
    if (state.status == LoginStatus.errror) {
      debugPrint(state.errorMessage);
    }
  }
}

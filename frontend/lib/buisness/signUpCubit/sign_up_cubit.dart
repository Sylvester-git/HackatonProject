import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:sqaure_project/data/Repository/FirebaseAuth.dart';
import 'package:sqaure_project/packages.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final AuthRepo _authRepo;
  SignUpCubit(this._authRepo) : super(SignUpState.initialize());

  Future<void> signup({
    required String email,
    required String password,
  }) async {
    if (state.status == SignupStatus.submitting) return;
    emit(state.copyWith(status: SignupStatus.submitting));
    try {
      await _authRepo.signup(email: email, password: password);
      emit(state.copyWith(status: SignupStatus.success));
    } catch (e) {
      emit(
        state.copyWith(
          status: SignupStatus.error,
          errorMessage: e.toString().contains('email-already-in-use')
              ? 'This Email account already exist'
              : e.toString(),
        ),
      );
    }
    if (state.status == SignupStatus.error) {
      debugPrint(state.errorMessage);
    }
  }
}

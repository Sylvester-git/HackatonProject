import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:sqaure_project/data/Repository/FirebaseAuth.dart';

import 'package:sqaure_project/packages.dart';

import '../../data/model/UserModel.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepo _authRepo;
  StreamSubscription<user>? _userSubscription;
  AuthBloc({
    required AuthRepo authRepo,
  })  : _authRepo = authRepo,
        super(authRepo.currentUser.isNotEmpty
            ? AuthState.authenticated(authRepo.currentUser)
            : const AuthState.unautheniticated()) {
    on<AuthUserChanged>(_onUserChanged);
    on<AuthLogOutRequested>(_onLogoutRequested);

    _userSubscription = _authRepo.users.listen(
      (users) => add(
        AuthUserChanged(users),
      ),
    );
  }

  void _onUserChanged(
    AuthUserChanged event,
    Emitter<AuthState> emit,
  ) {
    emit(
      event.userinfo.isNotEmpty
          ? AuthState.authenticated(event.userinfo)
          : const AuthState.unautheniticated(),
    );
  }

  void _onLogoutRequested(AuthLogOutRequested event, Emitter<AuthState> emit) {
    unawaited(_authRepo.logout());
  }

  @override
  Future<void> close() {
    _userSubscription?.cancel();
    return super.close();
  }
}

part of 'auth_bloc.dart';

enum AuthStatus { authenticated, unautheniticated }

class AuthState extends Equatable {
  final AuthStatus status;
  final user userinfo;

  const AuthState._({
    required this.status,
    this.userinfo = user.empty,
  });

  const AuthState.authenticated(user userinfo)
      : this._(
          status: AuthStatus.authenticated,
          userinfo: userinfo,
        );

  const AuthState.unautheniticated()
      : this._(status: AuthStatus.unautheniticated);
  @override
  List<Object?> get props => [
        status,
        userinfo,
      ];
}

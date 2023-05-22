part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AuthLogOutRequested extends AuthEvent {}

class AuthUserChanged extends AuthEvent {
  final user userinfo;

  const AuthUserChanged(this.userinfo);
  @override
  List<Object> get props => [
        userinfo,
      ];
}

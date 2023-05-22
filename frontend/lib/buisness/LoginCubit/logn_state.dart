part of 'logn_cubit.dart';

enum LoginStatus { inital, submitting, errror, success }

class LoginState extends Equatable {
  final String email;
  final String password;
  final LoginStatus status;
  final String errorMessage;
  const LoginState({
    required this.email,
    required this.password,
    required this.status,
    required this.errorMessage,
  });
  factory LoginState.initialize() {
    return const LoginState(
      email: '',
      password: '',
      errorMessage: ' ',
      status: LoginStatus.inital,
    );
  }
  @override
  List<Object> get props => [
        email,
        password,
        status,
      ];
  LoginState copyWith({
    String? email,
    String? password,
    LoginStatus? status,
    String? errorMessage,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

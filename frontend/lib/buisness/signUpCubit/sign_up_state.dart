// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'sign_up_cubit.dart';

enum SignupStatus { inital, submitting, success, error }

class SignUpState extends Equatable {
  final String email;
  final String password;
  final String errorMessage;
  final SignupStatus status;
  const SignUpState({
    required this.email,
    required this.password,
    required this.errorMessage,
    required this.status,
  });

  factory SignUpState.initialize() {
    return const SignUpState(
      email: '',
      password: '',
      errorMessage: '',
      status: SignupStatus.inital,
    );
  }

  @override
  List<Object?> get props => [status, password, email];

  SignUpState copyWith({
    String? email,
    String? password,
    String? errorMessage,
    SignupStatus? status,
  }) {
    return SignUpState(
      email: email ?? this.email,
      password: password ?? this.password,
      errorMessage: errorMessage ?? this.errorMessage,
      status: status ?? this.status,
    );
  }
}

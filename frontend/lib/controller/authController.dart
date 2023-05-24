import 'package:flutter/widgets.dart';
import 'package:sqaure_project/buisness/LoginCubit/logn_cubit.dart';
import 'package:sqaure_project/buisness/bloc/auth_bloc.dart';
import 'package:sqaure_project/buisness/signUpCubit/sign_up_cubit.dart';
import 'package:sqaure_project/packages.dart';

class AuthController {
  static login(
      {required String email,
      required String password,
      required BuildContext ctx}) {
    ctx.read<LognCubit>().login(
          email: email,
          password: password,
        );
  }

  static signup({
    required String email,
    required String password,
    required BuildContext ctx,
  }) {
    ctx.read<SignUpCubit>().signup(
          email: email,
          password: password,
        );
  }

  static logout({required BuildContext ctx}) {
    ctx.read<AuthBloc>().add(AuthLogOutRequested());
  }
}

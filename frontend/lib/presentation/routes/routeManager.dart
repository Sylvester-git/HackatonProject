import 'package:sqaure_project/buisness/bloc/auth_bloc.dart';

import '../../packages.dart';
import '../screen/screenExports.dart';

// ignore: file_names
class RouteManagerclass {
  static GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) {
          return BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              if (state.status == AuthStatus.unautheniticated) {
                return AuthScreen();
              }
              return HomeScreen();
            },
          );
        },
      )
    ],
  );
}

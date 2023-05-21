import '../../packages.dart';
import '../screen/screenExports.dart';

// ignore: file_names
class RouteManagerclass {
  static GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const AuthScreen();
        },
      )
    ],
  );
}

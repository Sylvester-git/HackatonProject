
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
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) {
          return const HomeScreen();
        },
        routes: [
          GoRoute(
            path: 'feed',
            builder: (context, state) {
              return const FeedPage();
            },
          ),
        ],
      ),
    ],
  );
}

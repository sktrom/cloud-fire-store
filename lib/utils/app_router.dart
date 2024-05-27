import 'package:cloud_fire_store/pages/employeed.dart';
import 'package:cloud_fire_store/pages/home.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const khomePage = '/';
  static const kemployeed = '/employeed';

  static final route = GoRouter(
    routes: [
      GoRoute(
        path: khomePage,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: kemployeed,
        builder: (context, state) => const Employeed(),
      ),
    ],
  );
}

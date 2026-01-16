import 'package:flutter_health_care/presentation/routes/route_paths.dart';
import 'package:go_router/go_router.dart';

import '../auth/login.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: RoutePaths.login, // RoutePaths.splash,
  routes: [
    // GoRoute(
    //   path: RoutePaths.splash,
    //   builder: (context, state) => const SplashPage(),
    // )
    GoRoute(
      path: RoutePaths.login,
      builder: (context, state) => const LoginPage(),
    ),
    // GoRoute(
    //   path: RoutePaths.register,
    // ),
  ],
);

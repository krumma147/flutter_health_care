import 'package:flutter_health_care/features/home/ui/homepage.dart';
import 'package:go_router/go_router.dart';

import '../features/auth/ui/src.dart';
import 'route_paths.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: RoutePaths.register,
  routes: [
    // GoRoute(
    //   path: RoutePaths.splash,
    //   builder: (context, state) => const SplashPage(),
    // )
    // GoRoute(
    //     path: RoutePaths.login,
    //     builder: (context, state) =>LoginPage(),
    //     ),
    GoRoute(
      path: RoutePaths.register,
      builder: (context, state) => const RegisterPage(),
    ),
    GoRoute(
      path: RoutePaths.home,
      builder: (context, state) => const HomePage(),
    ),
  ],
);

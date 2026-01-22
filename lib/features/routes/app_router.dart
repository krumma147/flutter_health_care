import 'package:flutter_health_care/features/routes/route_paths.dart';
import 'package:go_router/go_router.dart';
import '../auth/presentation/src.dart';
import '../home/ui/homepage.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: RoutePaths.login, // RoutePaths.splash,
  routes: [
    // GoRoute(
    //   path: RoutePaths.splash,
    //   builder: (context, state) => const SplashPage(),
    // )
    GoRoute(
      path: RoutePaths.register,
      builder: (context, state) => const RegisterPage(),
    ),
    GoRoute(
      path: RoutePaths.login,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: RoutePaths.home,
      builder: (context, state) => const HomePage(),
    ),
  ],
);

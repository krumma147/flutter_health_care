import 'package:flutter/material.dart';
import 'package:flutter_health_care/features/auth/di/login_binding.dart';
import 'package:flutter_health_care/features/auth/di/registration_binding.dart';
import 'features/routes/app_router.dart';

void main() {
  runApp(const MyApp());
  loginViewModeBinding();
  regisViewModelBinding();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
    );
  }
}

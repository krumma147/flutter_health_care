import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_health_care/core/enum/login_state_enum.dart';
import 'package:flutter_health_care/features/auth/bloc/login/src.dart';
import 'package:flutter_health_care/features/auth/di/login_binding.dart';
import 'package:flutter_health_care/routes/route_paths.dart';
import 'package:flutter_health_care/shared/components/src.dart';
import 'package:go_router/go_router.dart';

import 'forgot_password_widget.dart';
import 'src.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginBloc>(),
      child: const LoginView(),
    );
  }
}

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.status == LoginStatus.failure) {
          // Notify
        }
        if (state.status == LoginStatus.success) {
          // Notify
          context.go(RoutePaths.home);
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          final isLoading = state.status == LoginStatus.loading;
          final isResetPassword = state.forgetPassSteps == null;
          void handleGoToRegister() => context.go(RoutePaths.register);

          void handleOnForgotPassword() =>
              context.read<LoginBloc>().add(LoginForgotPasswordRequestEvent());

          return LoadingOverlay(
            isLoading: isLoading,
            child: isResetPassword
                ? Scaffold(
                    body: SafeArea(
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            headerTxt(),
                            loginForm(
                              onSignUp: handleGoToRegister,
                              onForgotPassword: handleOnForgotPassword,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                : const ForgotPasswordWidget(),
          );
        },
      ),
    );
  }
}

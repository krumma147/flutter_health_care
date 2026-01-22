import 'package:equatable/equatable.dart';
import 'package:flutter_health_care/core/enum/src.dart';

class LoginState extends Equatable {
  final String patientId;
  final String? email;
  final String password;
  final String? confirmPassword;
  final ForgetPasswordSteps? forgetPassSteps;
  final LoginStatus status;
  final String? errorMessage;

  const LoginState({
    required this.patientId,
    required this.password,
    this.forgetPassSteps,
    this.email,
    this.confirmPassword,
    this.errorMessage,
    this.status = LoginStatus.initial,
  });

  LoginState copyWith({
    String? patientId,
    String? email,
    String? password,
    String? confirmPassword,
    ForgetPasswordSteps? forgetPassSteps,
    LoginStatus? status,
    String? errorMessage,
  }) =>
      LoginState(
        patientId: patientId ?? this.patientId,
        email: email ?? this.email,
        password: password ?? this.password,
        confirmPassword: confirmPassword ?? this.confirmPassword,
        forgetPassSteps: forgetPassSteps,
        status: status ?? this.status,
        errorMessage: errorMessage ?? this.errorMessage,
      );

  @override
  List<Object?> get props => [
        patientId,
        email,
        password,
        confirmPassword,
        forgetPassSteps,
        status,
        errorMessage ?? '',
      ];
}

import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
  @override
  List<Object> get props => [];
}

class LoginPatientIdChangeEvent extends LoginEvent {
  final String patientId;
  const LoginPatientIdChangeEvent({required this.patientId});

  @override
  List<Object> get props => [patientId];
}

class LoginPasswordChangeEvent extends LoginEvent {
  final String password;
  const LoginPasswordChangeEvent({required this.password});

  @override
  List<Object> get props => [password];
}

class LoginConfirmPasswordChangeEvent extends LoginEvent {
  final String confirmPassword;
  const LoginConfirmPasswordChangeEvent({required this.confirmPassword});

  @override
  List<Object> get props => [confirmPassword];
}

class LoginForgotPassEmailChangeEvent extends LoginEvent {
  final String email;
  const LoginForgotPassEmailChangeEvent({required this.email});

  @override
  List<Object> get props => [email];
}

class LoginRequestLoginEvent extends LoginEvent {}

class LoginForgotPasswordRequestEvent extends LoginEvent {}

class LoginForgotPasswordRequestSentEvent extends LoginEvent {}

class LoginForgotPasswordNewPasswordEvent extends LoginEvent {
  final String password;
  final String confirmPassword;
  const LoginForgotPasswordNewPasswordEvent(
      {required this.password, required this.confirmPassword});

  @override
  List<Object> get props => [password, confirmPassword];
}

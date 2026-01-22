import 'package:bloc/bloc.dart';
import 'package:flutter_health_care/core/enum/login_state_enum.dart';
import 'src.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc()
      : super(const LoginState(
          patientId: '',
          password: '',
        )) {
    on<LoginPatientIdChangeEvent>(
      (event, emit) {
        if (event.patientId.isEmpty) {
          emit(state.copyWith(errorMessage: "Patient ID could not be empty"));
          return;
        } else {
          emit(state.copyWith(
            patientId: event.patientId,
            errorMessage: "",
          ));
        }
      },
    );

    on<LoginPasswordChangeEvent>(
      (event, emit) {
        if (event.password.isEmpty) {
          emit(state.copyWith(errorMessage: "Password could not be empty"));
          return;
        } else {
          emit(state.copyWith(
            patientId: event.password,
            errorMessage: "",
          ));
        }
      },
    );

    on<LoginRequestLoginEvent>(
      (event, emit) {
        if (state.patientId.isEmpty || state.password.isEmpty) {
          emit(state.copyWith(errorMessage: "Invalid patient ID or password"));
          return;
        } else {
          emit(state.copyWith(
            status: LoginStatus.loading,
            errorMessage: "",
          ));
        }
      },
    );

    on<LoginForgotPasswordRequestEvent>((event, emit) {
      emit(state.copyWith(
        password: "",
        forgetPassSteps: ForgetPasswordSteps.forgotPassNoEmail,
      ));
    });

    on<LoginForgotPasswordRequestSentEvent>((event, emit) {
      emit(state.copyWith(
        forgetPassSteps: ForgetPasswordSteps.forgotPassWithEmail,
      ));
      // Delay few second before change state again - could do in UI
    });

    on<LoginForgotPasswordNewPasswordEvent>((event, emit) {
      if (event.password == event.confirmPassword) {
        // pretend to request api
        emit(state.copyWith(
          password: "",
          confirmPassword: "",
          forgetPassSteps: null,
        ));
      }
    });
  }
}

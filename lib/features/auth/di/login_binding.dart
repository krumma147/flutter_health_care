import 'package:flutter_health_care/features/auth/bloc/login/login_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void loginViewModeBinding() {
  getIt.registerFactory(
    () => LoginBloc(),
  );
}

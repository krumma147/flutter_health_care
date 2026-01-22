import 'package:get_it/get_it.dart';

import '../bloc/registration/src.dart';

final getIt = GetIt.instance;

void regisViewModelBinding() {
  // implement repository

  getIt.registerFactory<RegistrationBloc>(
    () => RegistrationBloc(),
  );
}

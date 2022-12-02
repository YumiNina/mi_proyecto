import 'dart:ffi';

import 'package:flutter_bloc/flutter_bloc.dart';

class AppState {
  final bool isUserLoggedIn;

  AppState({required this.isUserLoggedIn});
}

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState(isUserLoggedIn: false));

  Void login() {
    emit(AppState(isUserLoggedIn: true));
  }
}

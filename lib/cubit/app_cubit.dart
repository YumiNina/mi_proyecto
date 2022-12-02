import 'dart:ffi';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mi_proyecto/dto/login_service_dto.dart';

class AppState {
  final bool isUserLoggedIn;
  final LoginResponseDto loginResponseDto;

  AppState({required this.isUserLoggedIn, this.loginResponseDto});
}

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState(isUserLoggedIn: false));

  Void login() {
    emit(AppState(isUserLoggedIn: true));
  }
}

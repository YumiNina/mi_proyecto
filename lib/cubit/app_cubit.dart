import 'dart:ffi';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mi_proyecto/dto/login_service_dto.dart';

class AppState {
  final bool isUserLoggedIn;
  final bool isLoading;
  final LoginResponseDto? loginResponseDto;

  AppState({required this.isUserLoggedIn, this.loginResponseDto});
}

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState(isUserLoggedIn: false));

  Void login(String username, String password) async {
    emit(AppState(isUserLoggedIn: false, isLoading: true));
    try {
      emit(AppState(isUserLoggedIn: true, loginResponseDto: LoginResponseDto));
    } catch (error) {
      emit(AppState(isUserLoggedIn: false));
    }
  }
}

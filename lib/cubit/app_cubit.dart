import 'dart:ffi';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mi_proyecto/dto/login_service_dto.dart';
import 'package:mi_proyecto/service/login_service.dart';

class AppState {
  final bool isUserLoggedIn;
  final bool isLoading;
  final LoginResponseDto? loginResponseDto;

  AppState(
      {required this.isUserLoggedIn,
      this.loginResponseDto,
      required this.isLoading});
}

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState(isUserLoggedIn: false, isLoading: true));

  Void login(String username, String password) async {
    emit(AppState(isUserLoggedIn: false, isLoading: true));
    try {
      // ignore: non_constant_identifier_names
      var LoginResponseDto = await LoginService.login(username, password);
      emit(AppState(
          isUserLoggedIn: true,
          isLoading: false,
          loginResponseDto: LoginResponseDto));
    } catch (error) {
      emit(AppState(isUserLoggedIn: false, isLoading: false));
    }
  }

  void logout() {
    emit(AppState(isUserLoggedIn: false, isLoading: false));
  }
}

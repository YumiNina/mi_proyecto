import 'dart:ffi';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mi_proyecto/dto/login_service_dto.dart';
import 'package:mi_proyecto/service/login_service.dart';

class AppState {
  final bool isUserLoggedIn;
    final bool isLoading;
  final LoginResponseDto? loginResponseDto;

  AppState({required this.isUserLoggedIn, this.loginResponseDto});
}

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState(isUserLoggedIn: false));

  Void login(String username, String password)async {
    try {
    var loginresponseDto =await LoginService.login(username, password);
    emit(AppState(isUserLoggedIn: true, loginResponseDto: LoginResponseDto));
    
  }; 
  else{
    emit(AppState(isUserLoggedIn: false));

  }
}
}
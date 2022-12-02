import 'dart:convert';

import '../dto/login_service_dto.dart';

class LoginService {
  static Future<LoginResponseDto> login(
      String username, String password) async {
    if (username == "jperez" && password == '123456') {
      return LoginResponseDto(
          token: "ey123hg123h123.12h323.adasd",
          refreshToken: "eyey123hg123h123.12h323.adasd",
          firstName: "juan",
          lastName: " perez");
    } else {
      throw Exception("Invalidacion de credenciales");
    }
  }
}

class LoginResponse {}

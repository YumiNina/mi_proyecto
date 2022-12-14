// ignore_for_file: public_member_api_docs, sort_constructors_first
class LoginResponseDto {
  final String token;
  final String refreshToken;
  final String firstName;
  final String lastName;
  LoginResponseDto({
    required this.token,
    required this.refreshToken,
    required this.firstName,
    required this.lastName,
  });
  factory LoginResponseDto.fromJson(Map<String, dynamic> json) {
    return LoginResponseDto(
        token: json['token'],
        refreshToken: json['refreshToken'],
        firstName: json['firstName'],
        lastName: json['lastName']);
  }
}

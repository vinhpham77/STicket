class LoginSuccessDto {
  final String accessToken;
  final String refreshToken;

  const LoginSuccessDto({
    required this.accessToken,
    required this.refreshToken,
  });

  factory LoginSuccessDto.fromJson(Map<String, dynamic> json) {
    return LoginSuccessDto(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );
  }
}

class LoginUserDto {
  LoginUserDto({
    required this.username,
    required this.password,
  });

  final String username;
  final String password;

  Map<String, dynamic> toPersistence() {
    return <String, dynamic>{
      'username': username,
      'password': password,
    };
  }
}

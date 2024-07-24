part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.connnectServer() = _ConnnectServer;
  const factory AuthEvent.loginUser({
    required LoginUserDto loginUserDto,
  }) = _LoginUser;

  const factory AuthEvent.autoLoginUser() = _AutoLoginUser;

  const factory AuthEvent.logoutUser() = _LogoutUser;
}

import 'package:connectly/core/logic/result.dart';
import 'package:connectly/features/authentication/data/dto/LoginData.dto.dart';
import 'package:connectly/features/authentication/data/dto/LoginUser.dto.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Result<Unit>> connectServer();
  Future<Result<LoginDatasDto>> loginUser(
    LoginUserDto loginUserDto,
  );
  Future<Result<LoginDatasDto>> autoLoginUser();
  Future<Result<Unit>> logoutUser();
}

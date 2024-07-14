import 'package:connectly/core/logic/result.dart';
import 'package:connectly/features/authentication/data/dto/LoginData.dto.dart';
import 'package:connectly/features/authentication/data/dto/LoginUser.dto.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Result<Unit>> connectServer();
  Future<Result<Either<String, LoginDatasDto>>> loginUser(
    LoginUserDto loginUserDto,
  );
}

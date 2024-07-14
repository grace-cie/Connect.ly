import 'package:connectly/core/logic/error_messages.dart';
import 'package:connectly/core/logic/result.dart';
import 'package:connectly/core/network/network_info.dart';
import 'package:connectly/features/authentication/data/datasources/auth_local_datasource.dart';
import 'package:connectly/features/authentication/data/datasources/auth_remote_datasource.dart';
import 'package:connectly/features/authentication/data/dto/LoginData.dto.dart';
import 'package:connectly/features/authentication/data/dto/LoginUser.dto.dart';
import 'package:connectly/features/authentication/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Environment(Environment.prod)
@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({
    required this.networkInfo,
    required this.authRemoteDatasource,
    required this.authLocalDatasource,
  });

  final NetworkInfo networkInfo;
  final AuthRemoteDatasource authRemoteDatasource;
  final AuthLocalDatasource authLocalDatasource;

  @override
  Future<Result<Unit>> connectServer() async {
    if (await networkInfo.isConnected) {
      final Unit result = await authRemoteDatasource.connectServer();

      return Result<Unit>.ok(data: result);
    } else {
      return const Result<Unit>.fail(error: ERR_NO_INTERNET_CONNECTION);
    }
  }

  @override
  Future<Result<Either<String, LoginDatasDto>>> loginUser(
      LoginUserDto loginUserDto) async {
    if (await networkInfo.isConnected) {
      final LoginDatasDto loginResult =
          await authRemoteDatasource.loginUser(loginUserDto);

      authLocalDatasource.saveToken(loginResult.token);
      final Either<String, LoginDatasDto> result = right(loginResult);

      await authLocalDatasource.saveCredentials(loginUserDto);

      return Result<Either<String, LoginDatasDto>>.ok(data: result);
    } else {
      return const Result<Either<String, LoginDatasDto>>.fail(
          error: ERR_NO_INTERNET_CONNECTION);
    }
  }
}

import 'package:connectly/core/logic/error_messages.dart';
import 'package:connectly/core/logic/result.dart';
import 'package:connectly/core/logic/server_exeption.dart';
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
  Future<Result<LoginDatasDto>> loginUser(LoginUserDto loginUserDto) async {
    if (await networkInfo.isConnected) {
      try {
        final LoginDatasDto loginResult =
            await authRemoteDatasource.loginUser(loginUserDto);

        authLocalDatasource.saveToken(loginResult.token);

        await authLocalDatasource.saveCredentials(loginUserDto);

        return Result<LoginDatasDto>.ok(data: loginResult);
      } on ServerException catch (e) {
        return Result<LoginDatasDto>.fail(error: e.message);
      }
    } else {
      return const Result<LoginDatasDto>.fail(
          error: ERR_NO_INTERNET_CONNECTION);
    }
  }

  @override
  Future<Result<LoginDatasDto>> autoLoginUser() async {
    if (await networkInfo.isConnected) {
      try {
        final LoginUserDto loginDatas =
            await authLocalDatasource.getCredentials();

        final LoginDatasDto loginResult =
            await authRemoteDatasource.loginUser(loginDatas);

        return Result<LoginDatasDto>.ok(data: loginResult);
      } on ServerException catch (e) {
        return Result<LoginDatasDto>.fail(error: e.message);
      }
    } else {
      return const Result<LoginDatasDto>.fail(
          error: ERR_NO_INTERNET_CONNECTION);
    }
  }

  @override
  Future<Result<Unit>> logoutUser() async {
    try {
      authLocalDatasource.deleteCredetialsAndTokens();
      return const Result<Unit>.ok(data: unit);
    } catch (e) {
      return const Result<Unit>.fail(error: ERR_DEFAULT);
    }
  }
}

import 'dart:convert';

import 'package:connectly/config.dart';
import 'package:connectly/core/logic/error_messages.dart';
import 'package:connectly/core/logic/server_exeption.dart';
import 'package:connectly/features/authentication/data/dto/LoginData.dto.dart';
import 'package:connectly/features/authentication/data/dto/LoginUser.dto.dart';
import 'package:dartz/dartz.dart';
import 'package:dio_http/dio_http.dart';
import 'package:injectable/injectable.dart';

abstract class AuthRemoteDatasource {
  Future<Unit> connectServer();
  Future<LoginDatasDto> loginUser(LoginUserDto loginUserDto);
}

@LazySingleton(as: AuthRemoteDatasource)
class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  AuthRemoteDatasourceImpl({
    required this.dio,
    required this.config,
  });

  final Dio dio;
  final Config config;

  @override
  Future<Unit> connectServer() async {
    late Response<dynamic> response;

    try {
      response = await dio.head(config.connectlyService);
    } catch (e) {
      if (e is DioError) {
        throw ServerException('Can`t Connect to Server');
      } else {
        throw ServerException(ERR_DEFAULT);
      }
    }

    if (response.statusCode == 200) {
      return unit;
    } else {
      throw checkErrResponse(response);
    }
  }

  @override
  Future<LoginDatasDto> loginUser(LoginUserDto loginUserDto) async {
    late Response<dynamic> response;
    late Map<String, dynamic> result;
    late LoginDatasDto resultData;

    try {
      final Map<String, dynamic> rawData = <String, dynamic>{
        'userName': loginUserDto.username,
        'password': loginUserDto.password,
      };

      response = await dio.post('${config.connectlyService}/login',
          data: jsonEncode(rawData));

      result = response.data['data'];
      resultData = LoginDatasDto.fromJson(result);
    } catch (e) {
      if (e is DioError) {
        throw checkErrResponse(e.response);
      } else {
        throw ServerException(ERR_DEFAULT);
      }
    }

    if (response.statusCode == 200) {
      return resultData;
    } else {
      throw ServerException('Error[${response.statusCode}]: Failed to login.');
    }
  }
}

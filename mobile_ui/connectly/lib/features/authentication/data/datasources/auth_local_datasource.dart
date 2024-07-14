import 'package:connectly/config.dart';
import 'package:connectly/core/logic/cache_exeption.dart';
import 'package:connectly/core/logic/error_messages.dart';
import 'package:connectly/features/authentication/data/dto/LoginUser.dto.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthLocalDatasource {
  Future<Unit> saveCredentials(LoginUserDto loginData);
  Unit saveUser(String userId);
  Unit saveToken(String token);
}

@LazySingleton(as: AuthLocalDatasource)
class AuthLocalDatasourceImpl implements AuthLocalDatasource {
  AuthLocalDatasourceImpl({
    required this.flutterSecureStorage,
    required this.sharedPreferences,
  });

  final FlutterSecureStorage flutterSecureStorage;
  final SharedPreferences sharedPreferences;

  @override
  Unit saveToken(String token) {
    try {
      sharedPreferences.setString(CacheKeys.ACCESS_TOKEN, token);
      return unit;
    } catch (e) {
      throw CacheException(ERR_SAVE_TOKEN);
    }
  }

  @override
  Future<Unit> saveCredentials(LoginUserDto loginData) async {
    try {
      await flutterSecureStorage.write(
          key: CacheKeys.LOGGED_USERNAME, value: loginData.username);
      await flutterSecureStorage.write(
          key: CacheKeys.LOGGED_PASSWORD, value: loginData.password);
      return unit;
    } catch (e) {
      throw CacheException(ERR_SAVE_CREDENTIALS);
    }
  }

  @override
  Unit saveUser(String userId) {
    try {
      sharedPreferences.setString(CacheKeys.USER_ID, userId);
      return unit;
    } catch (e) {
      throw CacheException(ERR_SAVE_TOKEN);
    }
  }
}

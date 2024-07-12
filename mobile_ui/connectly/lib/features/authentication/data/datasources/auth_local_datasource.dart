import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthLocalDatasource {}

@LazySingleton(as: AuthLocalDatasource)
class AuthLocalDatasourceImpl implements AuthLocalDatasource {
  AuthLocalDatasourceImpl({
    required this.flutterSecureStorage,
    required this.sharedPreferences,
  });

  final FlutterSecureStorage flutterSecureStorage;
  final SharedPreferences sharedPreferences;
  // final LocalAuthentication localAuthentication;
}

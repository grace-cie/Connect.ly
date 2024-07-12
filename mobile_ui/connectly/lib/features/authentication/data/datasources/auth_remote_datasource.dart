import 'package:connectly/config.dart';
import 'package:dio_http/dio_http.dart';
import 'package:injectable/injectable.dart';

abstract class AuthRemoteDatasource {}

@LazySingleton(as: AuthRemoteDatasource)
class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  AuthRemoteDatasourceImpl({
    required this.dio,
    required this.config,
  });

  final Dio dio;
  final Config config;
}

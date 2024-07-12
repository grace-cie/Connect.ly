import 'package:connectly/core/auth/authentication_iterceptor.dart';
import 'package:connectly/dic/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:dio_http/dio_http.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class DIContainer {
  @lazySingleton
  FlutterSecureStorage get flutterSecureStorage => const FlutterSecureStorage();

  // ignore: invalid_annotation_target
  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();

  @lazySingleton
  Dio get dio {
    final Dio dio = Dio();
    dio.interceptors.add(getIt<AuthenticationInterceptor>());
    return dio;
  }
}

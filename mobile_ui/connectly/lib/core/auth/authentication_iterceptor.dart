import 'dart:io';

import 'package:connectly/config.dart';
import 'package:dio_http/dio_http.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class AuthenticationInterceptor extends Interceptor {
  AuthenticationInterceptor({required this.prefs});

  final SharedPreferences prefs;
  bool isReAuthenticated = false;

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final String token = getAccessToken();

    options.headers[HttpHeaders.contentTypeHeader] = 'application/json';
    if (options.uri.origin.contains('uptape.app')) {
      options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
    }

    isReAuthenticated = false;
    // printWrapped(token);
    return handler.next(options);
  }

  @override
  void onError(
    DioError err,
    ErrorInterceptorHandler handler,
  ) {
    // Let device-token errors pass-thru to not kill the app

    if (err.response?.data['message'] == 'jwt expired') {
      // getIt<LogoutUserUsecase>().execute();
      // if (!isReAuthenticated) {
      //   getIt<ReAuthenticateUserUsecase>().execute();
      //   isReAuthenticated = true;
      // }
    }

    if (err.response?.data['errors']?[0]?['detail'] ==
        'Device token already exists') {
      handler.resolve(Response<dynamic>(requestOptions: err.requestOptions));
    }

    handler.next(err);
  }

  String getAccessToken() {
    return prefs.getString(CacheKeys.ACCESS_TOKEN) ?? '';
  }

  void printWrapped(String text) {
    final RegExp pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern
        .allMatches(text)
        .forEach((RegExpMatch match) => print(match.group(0)));
  }
}

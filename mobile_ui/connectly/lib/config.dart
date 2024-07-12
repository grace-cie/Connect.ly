// ignore_for_file: constant_identifier_names

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheKeys {
  /// auth keys
  ///

  static const String LOGGED_USERNAME = 'username';
  static const String LOGGED_PASSWORD = 'password';
  static const String ACCESS_TOKEN = 'access_token';
  static const String REFRESH_TOKEN = 'refresh_token';
  static const String USER_ID = 'user_id';
  static const String WORKSPACE = 'workspace';
  static const String BIOMETRICS_AVAILABLE = 'biometrics_available';
  static const String LOGIN_USING_BIOMETRICS = 'login_using_biometrics';
}

class ScreenRoute {
  /// Root Paths
  /// Root paths should start with a "/"
  ///
  static const String INITIAL_ROUTE = '/';
}

abstract class Config {
  String get connectlyService;
}

@LazySingleton(as: Config)
class ConfigImpl implements Config {
  ConfigImpl(this.prefs);
  final SharedPreferences prefs;

  /// Dev Environment
  ///
  @override
  String get connectlyService => 'https://connectly-tsku.onrender.com';

  /// Local Environment
  ///
  // String get connectlyService => 'https://localhost:3000';
}

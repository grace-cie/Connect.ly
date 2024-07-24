// ignore_for_file: constant_identifier_names

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SystemFontScale {
  static const String SYSTEMFONTSCALE_SMALL = 'Small';
  static const String SYSTEMFONTSCALE_DEFAULT = 'Default';
  static const String SYSTEMFONTSCALE_LARGE = 'Large';
  static const String SYSTEMFONTSCALE_LARGEST = 'Largest';
}

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
  static const String LOGIN_ROUTE = '/LoginPage';
  static const String HOME_ROUTE = '/HomePage';

  /// Nested
  /// Sub root paths should not start with a "/"
  static const String FEED_ROUTE = 'Feed';
  static const String CHAT_ROUTE = 'ChatPage';
  static const String NOTIFICATION_ROUTE = 'NotificationPage';
  static const String MENU_ROUTE = 'MenuPage';
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
  // @override
  // String get connectlyService => 'https://connectly-tsku.onrender.com';

  /// Local Environment
  ///
  @override
  String get connectlyService => 'http://192.168.254.108:3000';
}

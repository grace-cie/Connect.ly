import 'package:injectable/injectable.dart';

abstract class UserLocalDatasource {}

@LazySingleton(as: UserLocalDatasource)
class UserLocalDatasourceImpl implements UserLocalDatasource {
  UserLocalDatasourceImpl(
      //   {
      //   required this.flutterSecureStorage,
      //   required this.sharedPreferences,
      // }
      );

  // final FlutterSecureStorage flutterSecureStorage;
  // final SharedPreferences sharedPreferences;
}

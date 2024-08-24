import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class PostsLocalDatasource {}

@LazySingleton(as: PostsLocalDatasource)
class PostsLocalDatasourceImpl implements PostsLocalDatasource {
  PostsLocalDatasourceImpl({
    required this.flutterSecureStorage,
    required this.sharedPreferences,
  });

  final FlutterSecureStorage flutterSecureStorage;
  final SharedPreferences sharedPreferences;
}

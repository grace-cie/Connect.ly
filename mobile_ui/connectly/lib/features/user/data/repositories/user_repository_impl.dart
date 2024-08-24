import 'package:connectly/core/logic/error_messages.dart';
import 'package:connectly/core/logic/result.dart';
import 'package:connectly/core/logic/server_exeption.dart';
import 'package:connectly/core/network/network_info.dart';
import 'package:connectly/features/authentication/data/dto/UserData.dto.dart';
import 'package:connectly/features/user/data/datasources/user_local_datasource.dart';
import 'package:connectly/features/user/data/datasources/user_remote_datasource.dart';
import 'package:connectly/features/user/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@Environment(Environment.prod)
@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl({
    required this.networkInfo,
    required this.postsRemoteDatasource,
    required this.postsLocalDatasource,
  });
  final NetworkInfo networkInfo;
  final UserRemoteDatasource postsRemoteDatasource;
  final UserLocalDatasource postsLocalDatasource;

  @override
  Future<Result<UserDataDto>> getUser(String userId) async {
    if (await networkInfo.isConnected) {
      try {
        final UserDataDto loginResult =
            await postsRemoteDatasource.getUser(userId);

        return Result<UserDataDto>.ok(data: loginResult);
      } on ServerException catch (e) {
        return Result<UserDataDto>.fail(error: e.message);
      }
    } else {
      return const Result<UserDataDto>.fail(error: ERR_NO_INTERNET_CONNECTION);
    }
  }
}

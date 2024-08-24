import 'package:connectly/core/logic/error_messages.dart';
import 'package:connectly/core/logic/result.dart';
import 'package:connectly/core/logic/server_exeption.dart';
import 'package:connectly/core/network/network_info.dart';
import 'package:connectly/features/feed/data/datasources/posts_local_datasource.dart';
import 'package:connectly/features/feed/data/datasources/posts_remote_datasource.dart';
import 'package:connectly/features/feed/data/dto/PostData.dto.dart';
import 'package:connectly/features/feed/domain/repositories/posts_repository.dart';
import 'package:injectable/injectable.dart';

@Environment(Environment.prod)
@LazySingleton(as: PostsRepository)
class PostsRepositoryImpl implements PostsRepository {
  PostsRepositoryImpl({
    required this.networkInfo,
    required this.postsRemoteDatasource,
    required this.postsLocalDatasource,
  });
  final NetworkInfo networkInfo;
  final PostsRemoteDatasource postsRemoteDatasource;
  final PostsLocalDatasource postsLocalDatasource;

  @override
  Future<Result<PostDataDto>> getPosts(int page) async {
    if (await networkInfo.isConnected) {
      try {
        final PostDataDto loginResult =
            await postsRemoteDatasource.getPosts(page);

        return Result<PostDataDto>.ok(data: loginResult);
      } on ServerException catch (e) {
        return Result<PostDataDto>.fail(error: e.message);
      }
    } else {
      return const Result<PostDataDto>.fail(error: ERR_NO_INTERNET_CONNECTION);
    }
  }
}

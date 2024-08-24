import 'package:connectly/core/logic/result.dart';
import 'package:connectly/features/feed/data/dto/PostData.dto.dart';

abstract class PostsRepository {
  Future<Result<PostDataDto>> getPosts(int page);
}

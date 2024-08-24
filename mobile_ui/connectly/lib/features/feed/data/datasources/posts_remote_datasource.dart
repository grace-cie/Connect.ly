import 'package:connectly/config.dart';
import 'package:connectly/core/logic/error_messages.dart';
import 'package:connectly/core/logic/server_exeption.dart';
import 'package:connectly/features/feed/data/dto/PostData.dto.dart';
import 'package:dio_http/dio_http.dart';
import 'package:injectable/injectable.dart';

abstract class PostsRemoteDatasource {
  Future<PostDataDto> getPosts(int page);
}

@LazySingleton(as: PostsRemoteDatasource)
class PostsRemoteDatasourceImpl implements PostsRemoteDatasource {
  PostsRemoteDatasourceImpl({
    required this.dio,
    required this.config,
  });

  final Dio dio;
  final Config config;

  @override
  Future<PostDataDto> getPosts(int page) async {
    late Response<dynamic> response;
    late Map<String, dynamic> result;
    late PostDataDto resultData;
    try {
      response = await dio.get('${config.connectlyService}/posts/$page');
      result = response.data['data'];
      resultData = PostDataDto.fromJson(result);
    } catch (e) {
      if (e is DioError) {
        throw checkErrResponse(e.response);
      } else {
        throw ServerException(ERR_DEFAULT);
      }
    }

    if (response.statusCode == 200) {
      return resultData;
    } else {
      throw ServerException(
        'Error[${response.statusCode}]: Failed to get data.',
      );
    }
  }
}

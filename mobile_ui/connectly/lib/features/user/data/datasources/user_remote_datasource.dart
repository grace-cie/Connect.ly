import 'package:connectly/config.dart';
import 'package:connectly/core/logic/error_messages.dart';
import 'package:connectly/core/logic/server_exeption.dart';
import 'package:connectly/features/authentication/data/dto/UserData.dto.dart';
import 'package:dio_http/dio_http.dart';
import 'package:injectable/injectable.dart';

abstract class UserRemoteDatasource {
  Future<UserDataDto> getUser(String userId);
}

@LazySingleton(as: UserRemoteDatasource)
class PostsRemoteDatasourceImpl implements UserRemoteDatasource {
  PostsRemoteDatasourceImpl({
    required this.dio,
    required this.config,
  });

  final Dio dio;
  final Config config;

  @override
  Future<UserDataDto> getUser(String userId) async {
    late Response<dynamic> response;
    late Map<String, dynamic> result;
    late UserDataDto resultData;
    try {
      response = await dio.get('${config.connectlyService}/getUser/$userId');
      result = response.data['data'];
      resultData = UserDataDto.fromJson(result);
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
        'Error[${response.statusCode}]: Failed to get user.',
      );
    }
  }
}

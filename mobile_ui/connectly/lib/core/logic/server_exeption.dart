import 'package:connectly/core/logic/error_messages.dart';
import 'package:dio_http/dio_http.dart';

class ServerException implements Exception {
  ServerException(this.message);

  final String message;
}

ServerException checkErrResponse(Response<dynamic>? res) {
  late String result;

  if (res?.data?['errors'] != null) {
    final String details =
        res?.data['errors'][0]['detail'] ?? res?.data['errors'][0]['details'];

    return ServerException(details);
  }

  if (res?.data?['message'] != null) {
    final String message = res?.data?['message'];
    return ServerException(message);
  }

  switch (res?.statusCode) {
    case 401:
      result = ERR_401;
      break;
    case 400:
      result = ERR_400;
      break;
    case 403:
      result = ERR_403;
      break;
    case 404:
      result = ERR_404;
      break;
    case 500:
      result = ERR_500;
      break;
    case 503:
      result = ERR_503;
      break;
    case 422:
      result = ERR_422;
      break;
    case 502:
      result = ERR_502;
      break;
    default:
      result = getErrorMessage(res);
  }

  return ServerException(result);
}

String getErrorMessage(Response<dynamic>? res) {
  String result = ERR_DEFAULT;

  if (res?.data['errors'] != null) {
    result = '${res?.data['errors'][0]['detail']}';
  } else if (res?.data['message'] != null) {
    result = res?.data['message'] ?? ERR_DEFAULT;
  }

  return result;
}

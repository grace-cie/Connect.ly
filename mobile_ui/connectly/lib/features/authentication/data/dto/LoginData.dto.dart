import 'package:connectly/features/authentication/data/dto/UserData.dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'LoginData.dto.freezed.dart';
part 'LoginData.dto.g.dart';

@freezed
class LoginDatasDto with _$LoginDatasDto {
  const factory LoginDatasDto({
    required String token,
    required UserDataDto user,
  }) = _LoginDatasDto;

  const LoginDatasDto._();

  factory LoginDatasDto.fromJson(Map<String, dynamic> json) =>
      _$LoginDatasDtoFromJson(json);

  Map<String, dynamic> toPersistence() {
    return <String, dynamic>{
      'token': token,
      'user': user,
    };
  }
}

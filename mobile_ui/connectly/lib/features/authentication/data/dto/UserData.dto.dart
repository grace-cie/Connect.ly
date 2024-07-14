import 'package:freezed_annotation/freezed_annotation.dart';

part 'UserData.dto.freezed.dart';
part 'UserData.dto.g.dart';

@freezed
class UserDataDto with _$UserDataDto {
  const factory UserDataDto({
    required String id,
    required String name,
    required String userName,
  }) = _UserDataDto;

  const UserDataDto._();

  factory UserDataDto.fromJson(Map<String, dynamic> json) =>
      _$UserDataDtoFromJson(json);

  Map<String, dynamic> toPersistence() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'userName': userName,
    };
  }
}

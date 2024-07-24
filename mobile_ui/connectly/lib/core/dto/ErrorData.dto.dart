import 'package:freezed_annotation/freezed_annotation.dart';

part 'ErrorData.dto.freezed.dart';
part 'ErrorData.dto.g.dart';

@freezed
class ErrorDataDto with _$ErrorDataDto {
  const factory ErrorDataDto({
    required int statusCode,
    required String errorMessage,
  }) = _ErrorDataDto;

  const ErrorDataDto._();

  factory ErrorDataDto.fromJson(Map<String, dynamic> json) =>
      _$ErrorDataDtoFromJson(json);

  Map<String, dynamic> toPersistence() {
    return <String, dynamic>{
      'statusCode': statusCode,
      'errorMessage': errorMessage,
    };
  }
}

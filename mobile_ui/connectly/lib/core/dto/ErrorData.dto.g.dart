// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ErrorData.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorDataDtoImpl _$$ErrorDataDtoImplFromJson(Map<String, dynamic> json) =>
    _$ErrorDataDtoImpl(
      statusCode: (json['statusCode'] as num).toInt(),
      errorMessage: json['errorMessage'] as String,
    );

Map<String, dynamic> _$$ErrorDataDtoImplToJson(_$ErrorDataDtoImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'errorMessage': instance.errorMessage,
    };

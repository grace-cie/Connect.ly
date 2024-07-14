// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LoginData.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginDatasDtoImpl _$$LoginDatasDtoImplFromJson(Map<String, dynamic> json) =>
    _$LoginDatasDtoImpl(
      token: json['token'] as String,
      user: UserDataDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginDatasDtoImplToJson(_$LoginDatasDtoImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
    };

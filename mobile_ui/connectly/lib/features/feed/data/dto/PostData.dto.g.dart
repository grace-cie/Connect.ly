// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PostData.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostDataDtoImpl _$$PostDataDtoImplFromJson(Map<String, dynamic> json) =>
    _$PostDataDtoImpl(
      currentPage: (json['currentPage'] as num).toInt(),
      maxPage: (json['maxPage'] as num).toInt(),
      postsList: (json['postsList'] as List<dynamic>)
          .map((e) => PostDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PostDataDtoImplToJson(_$PostDataDtoImpl instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'maxPage': instance.maxPage,
      'postsList': instance.postsList,
    };

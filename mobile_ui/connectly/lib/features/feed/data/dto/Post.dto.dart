import 'package:freezed_annotation/freezed_annotation.dart';

part 'Post.dto.freezed.dart';
part 'Post.dto.g.dart';

@freezed
class PostDto with _$PostDto {
  const factory PostDto({
    required String postedBy,
    required String title,
    required String body,
    required DateTime createdAt,
    required String comments,
    required String id,
  }) = _PostDto;

  const PostDto._();

  factory PostDto.fromJson(Map<String, dynamic> json) =>
      _$PostDtoFromJson(json);

  Map<String, dynamic> toPersistence() {
    return <String, dynamic>{
      'postedBy': postedBy,
      'title': title,
      'body': body,
      'createdAt': createdAt,
      'comments': comments,
      'id': id,
    };
  }
}

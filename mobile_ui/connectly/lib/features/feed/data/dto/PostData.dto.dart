import 'package:connectly/features/feed/data/dto/Post.dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'PostData.dto.freezed.dart';
part 'PostData.dto.g.dart';

@freezed
class PostDataDto with _$PostDataDto {
  const factory PostDataDto({
    required int currentPage,
    required int maxPage,
    required List<PostDto> postsList,
  }) = _PostDataDto;

  const PostDataDto._();

  factory PostDataDto.fromJson(Map<String, dynamic> json) =>
      _$PostDataDtoFromJson(json);

  Map<String, dynamic> toPersistence() {
    return <String, dynamic>{
      'currentPage': currentPage,
      'maxPage': maxPage,
      'postsList': postsList,
    };
  }
}

part of 'posts_bloc.dart';

@freezed
class PostsEvent with _$PostsEvent {
  const factory PostsEvent.getPosts({
    required StateStatus stateStatus,
    required int page,
  }) = _GetPosts;
}

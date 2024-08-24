part of 'posts_bloc.dart';

@freezed
class PostsState with _$PostsState {
  const factory PostsState({
    String? errorMessage,
    required StateStatus stateStatus,
    PostDataDto? postData,
    required List<PostDto> postsDataValueList,
  }) = _PostsState;

  factory PostsState.initial() => const PostsState(
        stateStatus: StateStatus.initialState,
        postsDataValueList: <PostDto>[],
      );
}

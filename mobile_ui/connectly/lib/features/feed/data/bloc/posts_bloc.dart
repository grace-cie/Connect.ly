import 'package:connectly/core/logic/result.dart';
import 'package:connectly/core/logic/state_status.dart';
import 'package:connectly/features/feed/data/dto/Post.dto.dart';
import 'package:connectly/features/feed/data/dto/PostData.dto.dart';
import 'package:connectly/features/feed/domain/repositories/posts_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'posts_bloc.freezed.dart';
part 'posts_event.dart';
part 'posts_state.dart';

@lazySingleton
class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc({
    required this.postsRepository,
  }) : super(PostsState.initial()) {
    on<_GetPosts>((_GetPosts event, Emitter<PostsState> emit) async {
      emit(state.copyWith(stateStatus: event.stateStatus));

      final Result<PostDataDto> result =
          await postsRepository.getPosts(event.page);

      if (result.isFailure) {
        emit(state.copyWith(
          stateStatus: StateStatus.errorState,
          errorMessage: result.getError,
        ));
      } else {
        final PostDataDto postData = result.getValue;
        final List<PostDto> resultList = postData.postsList.toList();
        final int page = event.page;
        final List<PostDto> updatedList = _getUpdatedList<PostDto>(
            state.postsDataValueList, resultList, page);

        emit(state.copyWith(
          stateStatus: StateStatus.loadedState,
          postData: postData,
          postsDataValueList: updatedList,
        ));
      }
    });
  }

  final PostsRepository postsRepository;

  List<T> _getUpdatedList<T>(
      List<T> currentList, List<T> resultList, int page) {
    final List<T> updatedList = <T>[];
    if (page != 1) {
      updatedList.addAll(currentList);
    }
    for (final T value in resultList) {
      if (!updatedList.contains(value)) {
        updatedList.add(value);
      } else {
        final int index =
            updatedList.indexWhere((T element) => element == value);
        if (index != 0) {
          updatedList.replaceRange(index, index + 1, <T>[value]);
        }
      }
    }
    return updatedList;
  }
}

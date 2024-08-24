import 'package:connectly/core/logic/state_status.dart';
import 'package:connectly/features/feed/data/bloc/posts_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetPostsUsecase {
  GetPostsUsecase({required this.postsBloc});
  final PostsBloc postsBloc;

  void execute({
    required StateStatus stateStatus,
    required int page,
  }) {
    postsBloc.add(PostsEvent.getPosts(
      stateStatus: stateStatus,
      page: page,
    ));
  }
}

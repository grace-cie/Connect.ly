import 'package:auto_route/auto_route.dart';
import 'package:connectly/core/logic/state_status.dart';
import 'package:connectly/dic/injection.dart';
import 'package:connectly/features/authentication/data/bloc/auth_bloc.dart';
import 'package:connectly/features/feed/data/bloc/posts_bloc.dart';
import 'package:connectly/features/feed/data/dto/Post.dto.dart';
import 'package:connectly/features/feed/presentation/widgets/AddPost.widget.dart';
import 'package:connectly/features/feed/presentation/widgets/Post.widget.dart';
import 'package:connectly/features/feed/usecase/GetPosts.usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  late PostsBloc _postsBloc;
  late AuthBloc _authBloc;

  final TextEditingController postController = TextEditingController();

  late GetPostsUsecase _getPostsUsecase;
  @override
  void initState() {
    _postsBloc = getIt<PostsBloc>();
    _authBloc = getIt<AuthBloc>();

    _getPostsUsecase = getIt<GetPostsUsecase>();

    _getPostsUsecase.execute(stateStatus: StateStatus.loadingState, page: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsBloc, PostsState>(
      bloc: _postsBloc,
      builder: (BuildContext context, PostsState postsState) {
        return SafeArea(
          child: Scaffold(
            body: Column(
              children: <Widget>[
                Expanded(child: _postsList),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget get _postsList => BlocConsumer<AuthBloc, AuthState>(
        bloc: _authBloc,
        listener: _authListener,
        builder: (BuildContext context, AuthState authState) {
          return BlocConsumer<PostsBloc, PostsState>(
            bloc: _postsBloc,
            listener: _postsListener,
            builder: (BuildContext context, PostsState postsState) {
              return RefreshIndicator(
                onRefresh: () async {},
                child: ListView.builder(
                  itemCount: postsState.postsDataValueList.length,
                  itemBuilder: (BuildContext context, int index) {
                    final PostDto post = postsState.postsDataValueList[index];
                    return Column(
                      children: [
                        if (postsState.postData?.currentPage == 1 && index == 0)
                          Column(
                            children: [
                              AddPostWidget(
                                postController: postController,
                                userName:
                                    authState.loginDatas?.user.userName ?? '',
                                onTapPost: () {},
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Divider(),
                              )
                            ],
                          ),
                        PostWidget(
                          screenWidth: MediaQuery.of(context).size.width,
                          name: 'Name',
                          title: post.title,
                          body: post.body,
                        ),
                      ],
                    );
                  },
                ),
              );
            },
          );
        },
      );

  void _postsListener(BuildContext context, PostsState state) {}
  void _authListener(BuildContext context, AuthState state) {}
}

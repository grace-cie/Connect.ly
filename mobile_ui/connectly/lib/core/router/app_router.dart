import 'package:auto_route/auto_route.dart';
import 'package:connectly/config.dart';
import 'package:connectly/features/authentication/presentation/pages/Home.page.dart';
import 'package:connectly/features/authentication/presentation/pages/Initial.page.dart';
import 'package:connectly/features/authentication/presentation/pages/Login.page.dart';
import 'package:connectly/features/authentication/presentation/pages/Menu.page.dart';
import 'package:connectly/features/chat/presentation/pages/Chat.page.dart';
import 'package:connectly/features/feed/presentation/pages/Feed.page.dart';
import 'package:connectly/features/notification/presentation/pages/Notification.page.dart';
import 'package:flutter/widgets.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(
          page: InitialRoute.page,
          initial: true,
          path: ScreenRoute.INITIAL_ROUTE,
        ),
        CustomRoute(
          page: LoginRoute.page,
          path: ScreenRoute.LOGIN_ROUTE,
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
        CustomRoute(
            page: HomeRoute.page,
            path: ScreenRoute.HOME_ROUTE,
            children: <AutoRoute>[
              CustomRoute(
                page: FeedRoute.page,
                path: ScreenRoute.FEED_ROUTE,
                initial: true,
                transitionsBuilder: TransitionsBuilders.noTransition,
                durationInMilliseconds: 0,
                reverseDurationInMilliseconds: 0,
              ),
              CustomRoute(
                page: ChatRoute.page,
                path: ScreenRoute.CHAT_ROUTE,
                transitionsBuilder: TransitionsBuilders.noTransition,
                durationInMilliseconds: 0,
                reverseDurationInMilliseconds: 0,
              ),
              CustomRoute(
                page: NotificationRoute.page,
                path: ScreenRoute.NOTIFICATION_ROUTE,
                transitionsBuilder: TransitionsBuilders.noTransition,
                durationInMilliseconds: 0,
                reverseDurationInMilliseconds: 0,
              ),
              CustomRoute(
                page: MenuRoute.page,
                path: ScreenRoute.MENU_ROUTE,
                transitionsBuilder: TransitionsBuilders.noTransition,
                durationInMilliseconds: 0,
                reverseDurationInMilliseconds: 0,
              ),
            ]),
      ];
}

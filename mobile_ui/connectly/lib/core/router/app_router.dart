import 'package:auto_route/auto_route.dart';
import 'package:connectly/config.dart';
import 'package:connectly/features/authentication/presentation/pages/Initial.page.dart';

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
      ];
}

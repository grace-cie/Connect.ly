import 'package:auto_route/auto_route.dart';
import 'package:connectly/core/router/app_router.dart';
import 'package:connectly/dic/injection.dart';
import 'package:connectly/features/authentication/data/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class HomeNavPage {
  const HomeNavPage({required this.screenRoute, required this.navItem});

  final PageRouteInfo<dynamic> screenRoute;
  final SalomonBottomBarItem navItem;
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  late AuthBloc _authBloc;

  late StackRouter router;
  late TabsRouter tabsRouter;
  late ThemeData _theme;

  late MediaQueryData _mediaQuery;
  late bool _isSmallScreen;

  @override
  void initState() {
    super.initState();
    _authBloc = getIt<AuthBloc>();

    WidgetsBinding.instance.addObserver(this);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    router = AutoRouter.of(context);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    _theme = Theme.of(context);
    _mediaQuery = MediaQuery.of(context);
    _isSmallScreen = _mediaQuery.size.height < 684;
    final List<PageRouteInfo<dynamic>> routes =
        _connectlyTabScreens().map((HomeNavPage x) => x.screenRoute).toList();
    return BlocConsumer<AuthBloc, AuthState>(
      bloc: _authBloc,
      listener: _authListener,
      builder: (context, state) {
        return SafeArea(
          child: Container(
            color: _mainContainerColor(),
            child: Container(
              decoration: _mainContainerDecoration(),
              child: PopScope(
                canPop: false,
                child: AutoTabsRouter(
                  routes: routes,
                  builder: (BuildContext context, Widget child) {
                    tabsRouter = AutoTabsRouter.of(context);
                    return Scaffold(
                      backgroundColor: Colors.transparent,
                      appBar: _appBar,
                      body: Stack(
                        children: <Widget>[
                          SingleChildScrollView(
                            physics: const NeverScrollableScrollPhysics(),
                            child: ConstrainedBox(
                              constraints: BoxConstraints.tightFor(
                                width: MediaQuery.of(context).size.width,
                                height: _getConstraintsHeight(
                                    _isSmallScreen, context),
                              ),
                              child: child,
                            ),
                          )
                        ],
                      ),
                      bottomNavigationBar: Container(
                        decoration: const BoxDecoration(
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 1,
                            ),
                          ],
                        ),
                        child: _bottomNavigation,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void _authListener(BuildContext context, AuthState state) {}

  Color _mainContainerColor() {
    return _theme.canvasColor;
  }

  BoxDecoration _mainContainerDecoration() {
    return const BoxDecoration(
      color: Colors.grey,
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: <Color>[
          Colors.transparent,
          Colors.transparent,
        ],
      ),
    );
  }

  PreferredSizeWidget get _appBar {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          'assets/images/connect.ly-word-logo2.png',
          scale: 2,
        ),
      ),
      leadingWidth: 130,
      backgroundColor: Colors.white,
      elevation: 1.0,
      automaticallyImplyLeading: false,
      actions: [
        _searchAction,
      ],
    );
  }

  Widget get _searchAction {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        key: const ValueKey<String>('search-button-key'),
        // onTap: _showSearch,
        child: const Icon(
          FluentIcons.search_12_filled,
          size: 26,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget get _bottomNavigation {
    final List<SalomonBottomBarItem> connectlyNavItems =
        _connectlyTabScreens().map((HomeNavPage e) {
      return e.navItem;
    }).toList();

    return Container(
      color: Colors.white,
      padding: EdgeInsets.zero,
      margin: EdgeInsets.zero,
      child: SalomonBottomBar(
        currentIndex: tabsRouter.activeIndex,
        onTap: _selectNavOption,
        items: connectlyNavItems,
      ),
    );
  }

  List<HomeNavPage> _connectlyTabScreens() {
    return <HomeNavPage>[
      HomeNavPage(
        screenRoute: const FeedRoute(),
        navItem: _feedNavItem,
      ),
      HomeNavPage(
        screenRoute: const ChatRoute(),
        navItem: _chatsLogNavItem,
      ),
      HomeNavPage(
        screenRoute: const NotificationRoute(),
        navItem: _notificationsNavItem,
      ),
      HomeNavPage(
        screenRoute: const MenuRoute(),
        navItem: _menuNavItem,
      ),
    ];
  }

  /// Bottom Navigation Items
  SalomonBottomBarItem get _feedNavItem => SalomonBottomBarItem(
        icon: _feedNavIcon,
        activeIcon: _feedNavIconActive,
        title: const Text(
          'Feed',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        selectedColor: _theme.primaryColor,
      );

  SalomonBottomBarItem get _chatsLogNavItem => SalomonBottomBarItem(
        icon: _chatsLogNavIcon,
        activeIcon: _chatsLogNavIconActive,
        title: const Text(
          'Chats',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        selectedColor: _theme.primaryColor,
      );

  SalomonBottomBarItem get _notificationsNavItem => SalomonBottomBarItem(
        icon: _notificationsNavIcon,
        activeIcon: _notificationsNavIconActive,
        title: const Text(
          'Notifications',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        selectedColor: _theme.primaryColor,
      );

  SalomonBottomBarItem get _menuNavItem => SalomonBottomBarItem(
        icon: _menuNavIcon,
        activeIcon: _menuNavIconActive,
        title: const Text(
          'Menu',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        selectedColor: _theme.primaryColor,
      );

  Widget get _feedNavIcon {
    return const Icon(FluentIcons.home_12_regular);
  }

  Widget get _chatsLogNavIcon {
    return const Icon(FluentIcons.chat_12_regular);
  }

  Widget get _notificationsNavIcon {
    return const Icon(FluentIcons.alert_12_regular);
  }

  Widget get _menuNavIcon {
    return const Icon(FluentIcons.line_horizontal_3_20_regular);
  }

  Widget get _feedNavIconActive {
    return const Icon(FluentIcons.home_12_filled);
  }

  Widget get _chatsLogNavIconActive {
    return const Icon(FluentIcons.chat_12_filled);
  }

  Widget get _notificationsNavIconActive {
    return const Icon(FluentIcons.alert_12_filled);
  }

  Widget get _menuNavIconActive {
    return const Icon(FluentIcons.line_horizontal_3_20_filled);
  }

  void _selectNavOption(int i) {
    tabsRouter.setActiveIndex(i);
  }

  double _getConstraintsHeight(bool isSmallScreen, BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    const double appBarHeight = kToolbarHeight;
    const double bottomNavigationHeight = kBottomNavigationBarHeight;
    final double safeArea = MediaQuery.of(context).padding.top +
        MediaQuery.of(context).padding.bottom;

    final double heightToRemove =
        appBarHeight + safeArea + bottomNavigationHeight;

    return deviceHeight - heightToRemove;
  }
}

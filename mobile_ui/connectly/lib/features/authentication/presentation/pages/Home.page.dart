import 'package:auto_route/auto_route.dart';
import 'package:connectly/core/router/app_router.dart';
import 'package:connectly/dic/injection.dart';
import 'package:connectly/features/authentication/data/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class HomeNavPage {
  const HomeNavPage({required this.screenRoute, required this.navItem});

  final PageRouteInfo<dynamic> screenRoute;
  final BottomNavigationBarItem navItem;
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
                    print(child);
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
                      bottomNavigationBar: _bottomNavigation,
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
    return BoxDecoration(
        color: Colors.grey,
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              _theme.primaryColorLight,
              _theme.primaryColorDark,
            ]));
  }

  PreferredSizeWidget get _appBar {
    return AppBar(
      leading: Image.asset(
        'assets/images/connect.ly-word-logo2.png',
        scale: 2,
      ),
      leadingWidth: 50,
      backgroundColor: _theme.canvasColor,
      elevation: 0.0,
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
            Icons.search,
            size: 26,
            color: Colors.black,
          )),
    );
  }

  Widget get _bottomNavigation {
    final List<BottomNavigationBarItem> connectlyNavItems =
        <BottomNavigationBarItem>[
      ..._connectlyTabScreens().map((HomeNavPage e) {
        return e.navItem;
      })
    ];

    final List<BottomNavigationBarItem> items = connectlyNavItems;
    return Container(
      padding: EdgeInsets.zero,
      margin: EdgeInsets.zero,
      child: BottomNavigationBar(
        currentIndex: tabsRouter.activeIndex,
        items: items,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        onTap: _selectNavOption,
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
  /// For UpTape package
  BottomNavigationBarItem get _feedNavItem =>
      BottomNavigationBarItem(icon: _feedNavIcon, label: 'Feed');
  BottomNavigationBarItem get _chatsLogNavItem =>
      BottomNavigationBarItem(icon: _chatsLogNavIcon, label: 'Chats');
  BottomNavigationBarItem get _notificationsNavItem => BottomNavigationBarItem(
      icon: _notificationsNavIcon, label: 'Notifications');
  BottomNavigationBarItem get _menuNavItem =>
      BottomNavigationBarItem(icon: _menuNavIcon, label: 'Menu');

  Widget get _feedNavIcon {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: const Icon(Icons.home_rounded),
    );
  }

  Widget get _chatsLogNavIcon {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: const Icon(Icons.chat_bubble_rounded),
    );
  }

  Widget get _notificationsNavIcon {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: const Icon(Icons.notifications_rounded),
    );
  }

  Widget get _menuNavIcon {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: const Icon(Icons.menu),
    );
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

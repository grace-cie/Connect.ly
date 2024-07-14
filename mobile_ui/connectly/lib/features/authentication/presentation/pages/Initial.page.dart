import 'package:auto_route/auto_route.dart';
import 'package:connectly/core/logic/auth_status.dart';
import 'package:connectly/core/logic/navigate_page.dart';
import 'package:connectly/core/logic/state_status.dart';
import 'package:connectly/core/router/app_router.dart';
import 'package:connectly/dic/injection.dart';
import 'package:connectly/features/authentication/data/bloc/auth_bloc.dart';
import 'package:connectly/features/authentication/usecase/connect_server.usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

@RoutePage()
class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  late AuthBloc _authBloc;

  late ConnectServerUsecase _connectServerUsecase;

  late StackRouter _router;

  @override
  void initState() {
    _router = AutoRouter.of(context);
    _authBloc = getIt<AuthBloc>();

    _connectServerUsecase = getIt<ConnectServerUsecase>();

    _connectServerUsecase.execute();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
            Colors.white,
            Colors.white,
          ])),
      child: AnnotatedRegion(
        value: const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: BlocListener<AuthBloc, AuthState>(
            bloc: _authBloc,
            listener: _authListener,
            child: _loading,
          ),
        ),
      ),
    );
  }

  Widget get _loading => Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              child: _connectlyImg,
            ),
            Container(
              child: LoadingAnimationWidget.prograssiveDots(
                  color: Colors.black, size: 50),
            )
          ],
        ),
      );

  Widget get _connectlyImg => Image.asset(
        'assets/images/connect.ly-word-logo2.png',
        scale: 3,
      );

  void _authListener(BuildContext context, AuthState state) {
    if (state.stateStatus == StateStatus.errorState) {}

    if (state.stateStatus == StateStatus.loadedState) {
      if (state.navigatePage == NavigatePage.loginPage) {
        _router.popAndPush(LoginRoute(delay: 2));
      }
    }

    // if (state.navigatePage == NavigatePage.biometricsPage) {
    //   _router.popAndPush(const BiometricLoginRoute());
    // }
    // if (state.navigatePage == NavigatePage.loginPage) {
    //   _router.popAndPush(LoginRoute(delay: 2));
    // }
    if (state.navigatePage == NavigatePage.homePage &&
        state.authStatus == AuthStatus.authenticated) {
      _router.popAndPush(const HomeRoute());
    }
  }
}

import 'dart:async';

import 'package:connectly/core/router/app_router.dart';
import 'package:connectly/core/utils/theme_utils.dart';
import 'package:connectly/dic/injection.dart';
import 'package:connectly/features/authentication/data/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await configureInjection(Environment.prod);
      runApp(const MyApp());
    },
    _data,
  );
}

void _data(Object e, StackTrace s) {}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late AuthBloc _authBloc;

  late AppRouter _appRouter;

  @override
  void initState() {
    _authBloc = getIt<AuthBloc>();

    _appRouter = AppRouter();
    super.initState();
  }

  @override
  void dispose() {
    _authBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider<dynamic>>[
        BlocProvider<AuthBloc>(create: (BuildContext context) => _authBloc)
      ],
      child: MaterialApp.router(
        key: const ValueKey<String>('app-key'),
        theme: appTheme(Brightness.light),
        darkTheme: appTheme(Brightness.dark),
        routerConfig: _appRouter.config(),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:connectly/core/logic/state_status.dart';
import 'package:connectly/core/widgets/templates/base_body.dart';
import 'package:connectly/core/widgets/templates/sub_appbar_title.dart';
import 'package:connectly/dic/injection.dart';
import 'package:connectly/features/authentication/data/bloc/auth_bloc.dart';
import 'package:connectly/features/authentication/presentation/widgets/AuthButton.widget.dart';
import 'package:connectly/features/authentication/usecase/logout_user.usecase.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  late AuthBloc _authBloc;

  late LogoutUserUsecase _logoutUserUsecase;
  @override
  void initState() {
    _authBloc = getIt<AuthBloc>();
    _logoutUserUsecase = getIt<LogoutUserUsecase>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return BlocBuilder<AuthBloc, AuthState>(
      bloc: _authBloc,
      builder: (BuildContext context, AuthState state) {
        final String? name = state.loginDatas?.user.name;
        final String? namePrefix = state.loginDatas?.user.name.split('')[0];
        return BaseBody(
          child: Column(
            children: <Widget>[
              const SubAppbarTitle(
                title: 'Menu',
                pageIcon: FluentIcons.settings_16_filled,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).canvasColor,
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 30,
                          width: 30,
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 10,
                            child: Text(namePrefix ?? ''),
                          ),
                        ),
                      ),
                      Text(
                        name ?? '',
                        style: const TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AuthButtonWidget(
                  buttonName: 'Logout',
                  bgColor: Colors.grey,
                  buttonwidth: width,
                  isLoading: state.stateStatus == StateStatus.loadingState,
                  login: () => _logoutUserUsecase.execute(),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

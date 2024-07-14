import 'package:connectly/core/logic/result.dart';
import 'package:connectly/features/authentication/data/dto/LoginData.dto.dart';
import 'package:connectly/features/authentication/data/dto/LoginUser.dto.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:connectly/core/logic/auth_status.dart';
import 'package:connectly/core/logic/navigate_page.dart';
import 'package:connectly/core/logic/state_status.dart';
import 'package:connectly/features/authentication/domain/repositories/auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required this.authRepository,
  }) : super(AuthState.initial()) {
    on<_ConnnectServer>((_ConnnectServer event, Emitter<AuthState> emit) async {
      emit(state.copyWith(stateStatus: StateStatus.loadingState));

      Result<Unit> result = await authRepository.connectServer();

      if (!result.isSuccess) {
        emit(state.copyWith(
          stateStatus: StateStatus.errorState,
          errorMessage: result.getError,
        ));
      } else {
        emit(state.copyWith(
          stateStatus: StateStatus.loadedState,
          navigatePage: NavigatePage.loginPage,
        ));
      }
    });

    on<_LoginUser>((_LoginUser event, Emitter<AuthState> emit) async {
      emit(state.copyWith(stateStatus: StateStatus.loadingState));

      final Result<Either<String, LoginDatasDto>> result =
          await authRepository.loginUser(event.loginUserDto);

      if (!result.isSuccess) {
        emit(state.copyWith(
          stateStatus: StateStatus.errorState,
          errorMessage: result.getError,
        ));
      } else {
        final Either<String, LoginDatasDto> eitherResult = result.getValue;

        eitherResult.fold((l) {
          emit(state.copyWith(
            stateStatus: StateStatus.loadedState,
            authStatus: AuthStatus.authenticated,
            errorMessage: l,
          ));
        }, (r) {
          emit(state.copyWith(
            stateStatus: StateStatus.loadedState,
            authStatus: AuthStatus.authenticated,
            loginDatas: r,
            navigatePage: NavigatePage.homePage,
          ));
        });
      }
    });
  }

  final AuthRepository authRepository;
}

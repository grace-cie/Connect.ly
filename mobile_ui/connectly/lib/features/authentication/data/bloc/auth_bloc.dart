import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:connectly/core/logic/auth_status.dart';
import 'package:connectly/core/logic/navigate_page.dart';
import 'package:connectly/core/logic/state_status.dart';
import 'package:connectly/features/authentication/data/dto/LoginData.dto.dart';
import 'package:connectly/features/authentication/domain/repositories/auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required this.authRepository,
  }) : super(AuthState.initial()) {
    on<_LoginUser>((_LoginUser event, Emitter<AuthState> emit) {
      return null;
    });
  }

  final AuthRepository authRepository;
}

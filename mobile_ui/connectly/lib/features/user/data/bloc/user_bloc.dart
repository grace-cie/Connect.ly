import 'package:connectly/core/logic/result.dart';
import 'package:connectly/core/logic/state_status.dart';
import 'package:connectly/features/authentication/data/dto/UserData.dto.dart';
import 'package:connectly/features/user/domain/repositories/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

@lazySingleton
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({
    required this.userRepository,
  }) : super(UserState.initial()) {
    on<_GetUser>((_GetUser event, Emitter<UserState> emit) async {
      final Result<UserDataDto> result =
          await userRepository.getUser(event.userId);
      if (result.isFailure) {
        emit(state.copyWith(
          stateStatus: StateStatus.errorState,
          errorMessage: result.getError,
        ));
      } else {
        emit(state.copyWith(
          selectedUser: result.getValue,
        ));
      }
    });
  }

  final UserRepository userRepository;
}

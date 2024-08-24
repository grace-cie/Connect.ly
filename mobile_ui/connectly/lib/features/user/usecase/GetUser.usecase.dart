import 'package:connectly/features/user/data/bloc/user_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetUserUsecase {
  GetUserUsecase({required this.userBloc});
  final UserBloc userBloc;

  void execute({
    required String userId,
  }) {
    userBloc.add(UserEvent.getUser(
      userId: userId,
    ));
  }
}

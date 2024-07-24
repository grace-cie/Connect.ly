import 'package:connectly/features/authentication/data/bloc/auth_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AutoLoginUserUsecase {
  AutoLoginUserUsecase({required this.authBloc});

  final AuthBloc authBloc;

  void execute() {
    authBloc.add(const AuthEvent.autoLoginUser());
  }
}

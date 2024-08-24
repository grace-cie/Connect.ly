import 'package:connectly/core/logic/result.dart';
import 'package:connectly/features/authentication/data/dto/UserData.dto.dart';

abstract class UserRepository {
  Future<Result<UserDataDto>> getUser(String userId);
}

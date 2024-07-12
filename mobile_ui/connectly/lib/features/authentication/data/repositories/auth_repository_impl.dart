import 'package:connectly/core/network/network_info.dart';
import 'package:connectly/features/authentication/data/datasources/auth_local_datasource.dart';
import 'package:connectly/features/authentication/data/datasources/auth_remote_datasource.dart';
import 'package:connectly/features/authentication/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@Environment(Environment.prod)
@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({
    required this.networkInfo,
    required this.authRemoteDatasource,
    required this.authLocalDatasource,
  });

  final NetworkInfo networkInfo;
  final AuthRemoteDatasource authRemoteDatasource;
  final AuthLocalDatasource authLocalDatasource;
}

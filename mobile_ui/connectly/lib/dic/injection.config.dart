// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio_http/dio_http.dart' as _i5;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i6;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

import '../config.dart' as _i7;
import '../core/auth/authentication_iterceptor.dart' as _i10;
import '../core/network/network_info.dart' as _i13;
import '../core/router/segment.dart' as _i11;
import '../core/scale/system_scale.dart' as _i8;
import '../features/authentication/data/bloc/auth_bloc.dart' as _i19;
import '../features/authentication/data/bloc/segment/segment_bloc.dart' as _i12;
import '../features/authentication/data/datasources/auth_local_datasource.dart'
    as _i14;
import '../features/authentication/data/datasources/auth_remote_datasource.dart'
    as _i9;
import '../features/authentication/data/repositories/auth_repository_impl.dart'
    as _i16;
import '../features/authentication/domain/repositories/auth_repository.dart'
    as _i15;
import '../features/authentication/usecase/auto_login.usecase.dart' as _i23;
import '../features/authentication/usecase/connect_server.usecase.dart' as _i20;
import '../features/authentication/usecase/login_user.usecase.dart' as _i21;
import '../features/authentication/usecase/logout_user.usecase.dart' as _i22;
import '../features/authentication/usecase/segment/dispose_segment_listener.dart'
    as _i17;
import '../features/authentication/usecase/segment/listen_segment_stream.dart'
    as _i18;
import 'di_container.dart' as _i24;

const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dIContainer = _$DIContainer();
    await gh.factoryAsync<_i3.SharedPreferences>(
      () => dIContainer.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i4.FlutterSecureStorage>(
        () => dIContainer.flutterSecureStorage);
    gh.lazySingleton<_i5.Dio>(() => dIContainer.dio);
    gh.lazySingleton<_i6.InternetConnectionChecker>(
        () => dIContainer.internetConnectionChecker);
    gh.lazySingleton<_i7.Config>(
        () => _i7.ConfigImpl(gh<_i3.SharedPreferences>()));
    gh.lazySingleton<_i8.SystemScale>(() => _i8.SystemScaleImpl());
    gh.lazySingleton<_i9.AuthRemoteDatasource>(
        () => _i9.AuthRemoteDatasourceImpl(
              dio: gh<_i5.Dio>(),
              config: gh<_i7.Config>(),
            ));
    gh.lazySingleton<_i10.AuthenticationInterceptor>(() =>
        _i10.AuthenticationInterceptor(prefs: gh<_i3.SharedPreferences>()));
    gh.lazySingleton<_i11.Segment>(() => _i11.SegmentImpl());
    gh.lazySingleton<_i12.SegmentBloc>(
        () => _i12.SegmentBloc(gh<_i11.Segment>()));
    gh.lazySingleton<_i13.NetworkInfo>(() => _i13.NetworkInfoImpl(
        connectionChecker: gh<_i6.InternetConnectionChecker>()));
    gh.lazySingleton<_i14.AuthLocalDatasource>(
        () => _i14.AuthLocalDatasourceImpl(
              flutterSecureStorage: gh<_i4.FlutterSecureStorage>(),
              sharedPreferences: gh<_i3.SharedPreferences>(),
            ));
    gh.lazySingleton<_i15.AuthRepository>(
      () => _i16.AuthRepositoryImpl(
        networkInfo: gh<_i13.NetworkInfo>(),
        authRemoteDatasource: gh<_i9.AuthRemoteDatasource>(),
        authLocalDatasource: gh<_i14.AuthLocalDatasource>(),
      ),
      registerFor: {_prod},
    );
    gh.factory<_i17.DisposeSegmentListenerUsecase>(() =>
        _i17.DisposeSegmentListenerUsecase(
            segmentBloc: gh<_i12.SegmentBloc>()));
    gh.factory<_i18.ListenSegmentStreamUsecase>(() =>
        _i18.ListenSegmentStreamUsecase(segmentBloc: gh<_i12.SegmentBloc>()));
    gh.lazySingleton<_i19.AuthBloc>(
        () => _i19.AuthBloc(authRepository: gh<_i15.AuthRepository>()));
    gh.factory<_i20.ConnectServerUsecase>(
        () => _i20.ConnectServerUsecase(authBloc: gh<_i19.AuthBloc>()));
    gh.factory<_i21.LoginUserUsecase>(
        () => _i21.LoginUserUsecase(authBloc: gh<_i19.AuthBloc>()));
    gh.factory<_i22.LogoutUserUsecase>(
        () => _i22.LogoutUserUsecase(authBloc: gh<_i19.AuthBloc>()));
    gh.factory<_i23.AutoLoginUserUsecase>(
        () => _i23.AutoLoginUserUsecase(authBloc: gh<_i19.AuthBloc>()));
    return this;
  }
}

class _$DIContainer extends _i24.DIContainer {}

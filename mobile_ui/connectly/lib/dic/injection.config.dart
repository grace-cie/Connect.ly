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

import '../config.dart' as _i8;
import '../core/auth/authentication_iterceptor.dart' as _i13;
import '../core/network/network_info.dart' as _i16;
import '../core/router/segment.dart' as _i14;
import '../core/scale/system_scale.dart' as _i9;
import '../features/authentication/data/bloc/auth_bloc.dart' as _i28;
import '../features/authentication/data/bloc/segment/segment_bloc.dart' as _i15;
import '../features/authentication/data/datasources/auth_local_datasource.dart'
    as _i18;
import '../features/authentication/data/datasources/auth_remote_datasource.dart'
    as _i12;
import '../features/authentication/data/repositories/auth_repository_impl.dart'
    as _i22;
import '../features/authentication/domain/repositories/auth_repository.dart'
    as _i21;
import '../features/authentication/usecase/auto_login.usecase.dart' as _i34;
import '../features/authentication/usecase/connect_server.usecase.dart' as _i31;
import '../features/authentication/usecase/login_user.usecase.dart' as _i32;
import '../features/authentication/usecase/logout_user.usecase.dart' as _i33;
import '../features/authentication/usecase/segment/dispose_segment_listener.dart'
    as _i23;
import '../features/authentication/usecase/segment/listen_segment_stream.dart'
    as _i24;
import '../features/feed/data/bloc/posts_bloc.dart' as _i25;
import '../features/feed/data/datasources/posts_local_datasource.dart' as _i7;
import '../features/feed/data/datasources/posts_remote_datasource.dart' as _i11;
import '../features/feed/data/repositories/posts_repository_impl.dart' as _i20;
import '../features/feed/domain/repositories/posts_repository.dart' as _i19;
import '../features/feed/usecase/GetPosts.usecase.dart' as _i29;
import '../features/user/data/bloc/user_bloc.dart' as _i30;
import '../features/user/data/datasources/user_local_datasource.dart' as _i17;
import '../features/user/data/datasources/user_remote_datasource.dart' as _i10;
import '../features/user/data/repositories/user_repository_impl.dart' as _i27;
import '../features/user/domain/repositories/user_repository.dart' as _i26;
import 'di_container.dart' as _i35;

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
    gh.lazySingleton<_i7.PostsLocalDatasource>(
        () => _i7.PostsLocalDatasourceImpl(
              flutterSecureStorage: gh<_i4.FlutterSecureStorage>(),
              sharedPreferences: gh<_i3.SharedPreferences>(),
            ));
    gh.lazySingleton<_i8.Config>(
        () => _i8.ConfigImpl(gh<_i3.SharedPreferences>()));
    gh.lazySingleton<_i9.SystemScale>(() => _i9.SystemScaleImpl());
    gh.lazySingleton<_i10.UserRemoteDatasource>(
        () => _i10.PostsRemoteDatasourceImpl(
              dio: gh<_i5.Dio>(),
              config: gh<_i8.Config>(),
            ));
    gh.lazySingleton<_i11.PostsRemoteDatasource>(
        () => _i11.PostsRemoteDatasourceImpl(
              dio: gh<_i5.Dio>(),
              config: gh<_i8.Config>(),
            ));
    gh.lazySingleton<_i12.AuthRemoteDatasource>(
        () => _i12.AuthRemoteDatasourceImpl(
              dio: gh<_i5.Dio>(),
              config: gh<_i8.Config>(),
            ));
    gh.lazySingleton<_i13.AuthenticationInterceptor>(() =>
        _i13.AuthenticationInterceptor(prefs: gh<_i3.SharedPreferences>()));
    gh.lazySingleton<_i14.Segment>(() => _i14.SegmentImpl());
    gh.lazySingleton<_i15.SegmentBloc>(
        () => _i15.SegmentBloc(gh<_i14.Segment>()));
    gh.lazySingleton<_i16.NetworkInfo>(() => _i16.NetworkInfoImpl(
        connectionChecker: gh<_i6.InternetConnectionChecker>()));
    gh.lazySingleton<_i17.UserLocalDatasource>(
        () => _i17.UserLocalDatasourceImpl());
    gh.lazySingleton<_i18.AuthLocalDatasource>(
        () => _i18.AuthLocalDatasourceImpl(
              flutterSecureStorage: gh<_i4.FlutterSecureStorage>(),
              sharedPreferences: gh<_i3.SharedPreferences>(),
            ));
    gh.lazySingleton<_i19.PostsRepository>(
      () => _i20.PostsRepositoryImpl(
        networkInfo: gh<_i16.NetworkInfo>(),
        postsRemoteDatasource: gh<_i11.PostsRemoteDatasource>(),
        postsLocalDatasource: gh<_i7.PostsLocalDatasource>(),
      ),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i21.AuthRepository>(
      () => _i22.AuthRepositoryImpl(
        networkInfo: gh<_i16.NetworkInfo>(),
        authRemoteDatasource: gh<_i12.AuthRemoteDatasource>(),
        authLocalDatasource: gh<_i18.AuthLocalDatasource>(),
      ),
      registerFor: {_prod},
    );
    gh.factory<_i23.DisposeSegmentListenerUsecase>(() =>
        _i23.DisposeSegmentListenerUsecase(
            segmentBloc: gh<_i15.SegmentBloc>()));
    gh.factory<_i24.ListenSegmentStreamUsecase>(() =>
        _i24.ListenSegmentStreamUsecase(segmentBloc: gh<_i15.SegmentBloc>()));
    gh.lazySingleton<_i25.PostsBloc>(
        () => _i25.PostsBloc(postsRepository: gh<_i19.PostsRepository>()));
    gh.lazySingleton<_i26.UserRepository>(
      () => _i27.UserRepositoryImpl(
        networkInfo: gh<_i16.NetworkInfo>(),
        postsRemoteDatasource: gh<_i10.UserRemoteDatasource>(),
        postsLocalDatasource: gh<_i17.UserLocalDatasource>(),
      ),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i28.AuthBloc>(
        () => _i28.AuthBloc(authRepository: gh<_i21.AuthRepository>()));
    gh.factory<_i29.GetPostsUsecase>(
        () => _i29.GetPostsUsecase(postsBloc: gh<_i25.PostsBloc>()));
    gh.lazySingleton<_i30.UserBloc>(
        () => _i30.UserBloc(userRepository: gh<_i26.UserRepository>()));
    gh.factory<_i31.ConnectServerUsecase>(
        () => _i31.ConnectServerUsecase(authBloc: gh<_i28.AuthBloc>()));
    gh.factory<_i32.LoginUserUsecase>(
        () => _i32.LoginUserUsecase(authBloc: gh<_i28.AuthBloc>()));
    gh.factory<_i33.LogoutUserUsecase>(
        () => _i33.LogoutUserUsecase(authBloc: gh<_i28.AuthBloc>()));
    gh.factory<_i34.AutoLoginUserUsecase>(
        () => _i34.AutoLoginUserUsecase(authBloc: gh<_i28.AuthBloc>()));
    return this;
  }
}

class _$DIContainer extends _i35.DIContainer {}

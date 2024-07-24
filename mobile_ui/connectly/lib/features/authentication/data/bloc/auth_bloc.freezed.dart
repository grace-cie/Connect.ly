// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connnectServer,
    required TResult Function(LoginUserDto loginUserDto) loginUser,
    required TResult Function() autoLoginUser,
    required TResult Function() logoutUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connnectServer,
    TResult? Function(LoginUserDto loginUserDto)? loginUser,
    TResult? Function()? autoLoginUser,
    TResult? Function()? logoutUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connnectServer,
    TResult Function(LoginUserDto loginUserDto)? loginUser,
    TResult Function()? autoLoginUser,
    TResult Function()? logoutUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnnectServer value) connnectServer,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_AutoLoginUser value) autoLoginUser,
    required TResult Function(_LogoutUser value) logoutUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnnectServer value)? connnectServer,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_AutoLoginUser value)? autoLoginUser,
    TResult? Function(_LogoutUser value)? logoutUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnnectServer value)? connnectServer,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_AutoLoginUser value)? autoLoginUser,
    TResult Function(_LogoutUser value)? logoutUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ConnnectServerImplCopyWith<$Res> {
  factory _$$ConnnectServerImplCopyWith(_$ConnnectServerImpl value,
          $Res Function(_$ConnnectServerImpl) then) =
      __$$ConnnectServerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnnectServerImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ConnnectServerImpl>
    implements _$$ConnnectServerImplCopyWith<$Res> {
  __$$ConnnectServerImplCopyWithImpl(
      _$ConnnectServerImpl _value, $Res Function(_$ConnnectServerImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConnnectServerImpl implements _ConnnectServer {
  const _$ConnnectServerImpl();

  @override
  String toString() {
    return 'AuthEvent.connnectServer()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnnectServerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connnectServer,
    required TResult Function(LoginUserDto loginUserDto) loginUser,
    required TResult Function() autoLoginUser,
    required TResult Function() logoutUser,
  }) {
    return connnectServer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connnectServer,
    TResult? Function(LoginUserDto loginUserDto)? loginUser,
    TResult? Function()? autoLoginUser,
    TResult? Function()? logoutUser,
  }) {
    return connnectServer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connnectServer,
    TResult Function(LoginUserDto loginUserDto)? loginUser,
    TResult Function()? autoLoginUser,
    TResult Function()? logoutUser,
    required TResult orElse(),
  }) {
    if (connnectServer != null) {
      return connnectServer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnnectServer value) connnectServer,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_AutoLoginUser value) autoLoginUser,
    required TResult Function(_LogoutUser value) logoutUser,
  }) {
    return connnectServer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnnectServer value)? connnectServer,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_AutoLoginUser value)? autoLoginUser,
    TResult? Function(_LogoutUser value)? logoutUser,
  }) {
    return connnectServer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnnectServer value)? connnectServer,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_AutoLoginUser value)? autoLoginUser,
    TResult Function(_LogoutUser value)? logoutUser,
    required TResult orElse(),
  }) {
    if (connnectServer != null) {
      return connnectServer(this);
    }
    return orElse();
  }
}

abstract class _ConnnectServer implements AuthEvent {
  const factory _ConnnectServer() = _$ConnnectServerImpl;
}

/// @nodoc
abstract class _$$LoginUserImplCopyWith<$Res> {
  factory _$$LoginUserImplCopyWith(
          _$LoginUserImpl value, $Res Function(_$LoginUserImpl) then) =
      __$$LoginUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginUserDto loginUserDto});
}

/// @nodoc
class __$$LoginUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginUserImpl>
    implements _$$LoginUserImplCopyWith<$Res> {
  __$$LoginUserImplCopyWithImpl(
      _$LoginUserImpl _value, $Res Function(_$LoginUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginUserDto = null,
  }) {
    return _then(_$LoginUserImpl(
      loginUserDto: null == loginUserDto
          ? _value.loginUserDto
          : loginUserDto // ignore: cast_nullable_to_non_nullable
              as LoginUserDto,
    ));
  }
}

/// @nodoc

class _$LoginUserImpl implements _LoginUser {
  const _$LoginUserImpl({required this.loginUserDto});

  @override
  final LoginUserDto loginUserDto;

  @override
  String toString() {
    return 'AuthEvent.loginUser(loginUserDto: $loginUserDto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUserImpl &&
            (identical(other.loginUserDto, loginUserDto) ||
                other.loginUserDto == loginUserDto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginUserDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginUserImplCopyWith<_$LoginUserImpl> get copyWith =>
      __$$LoginUserImplCopyWithImpl<_$LoginUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connnectServer,
    required TResult Function(LoginUserDto loginUserDto) loginUser,
    required TResult Function() autoLoginUser,
    required TResult Function() logoutUser,
  }) {
    return loginUser(loginUserDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connnectServer,
    TResult? Function(LoginUserDto loginUserDto)? loginUser,
    TResult? Function()? autoLoginUser,
    TResult? Function()? logoutUser,
  }) {
    return loginUser?.call(loginUserDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connnectServer,
    TResult Function(LoginUserDto loginUserDto)? loginUser,
    TResult Function()? autoLoginUser,
    TResult Function()? logoutUser,
    required TResult orElse(),
  }) {
    if (loginUser != null) {
      return loginUser(loginUserDto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnnectServer value) connnectServer,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_AutoLoginUser value) autoLoginUser,
    required TResult Function(_LogoutUser value) logoutUser,
  }) {
    return loginUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnnectServer value)? connnectServer,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_AutoLoginUser value)? autoLoginUser,
    TResult? Function(_LogoutUser value)? logoutUser,
  }) {
    return loginUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnnectServer value)? connnectServer,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_AutoLoginUser value)? autoLoginUser,
    TResult Function(_LogoutUser value)? logoutUser,
    required TResult orElse(),
  }) {
    if (loginUser != null) {
      return loginUser(this);
    }
    return orElse();
  }
}

abstract class _LoginUser implements AuthEvent {
  const factory _LoginUser({required final LoginUserDto loginUserDto}) =
      _$LoginUserImpl;

  LoginUserDto get loginUserDto;
  @JsonKey(ignore: true)
  _$$LoginUserImplCopyWith<_$LoginUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AutoLoginUserImplCopyWith<$Res> {
  factory _$$AutoLoginUserImplCopyWith(
          _$AutoLoginUserImpl value, $Res Function(_$AutoLoginUserImpl) then) =
      __$$AutoLoginUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AutoLoginUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AutoLoginUserImpl>
    implements _$$AutoLoginUserImplCopyWith<$Res> {
  __$$AutoLoginUserImplCopyWithImpl(
      _$AutoLoginUserImpl _value, $Res Function(_$AutoLoginUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AutoLoginUserImpl implements _AutoLoginUser {
  const _$AutoLoginUserImpl();

  @override
  String toString() {
    return 'AuthEvent.autoLoginUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AutoLoginUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connnectServer,
    required TResult Function(LoginUserDto loginUserDto) loginUser,
    required TResult Function() autoLoginUser,
    required TResult Function() logoutUser,
  }) {
    return autoLoginUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connnectServer,
    TResult? Function(LoginUserDto loginUserDto)? loginUser,
    TResult? Function()? autoLoginUser,
    TResult? Function()? logoutUser,
  }) {
    return autoLoginUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connnectServer,
    TResult Function(LoginUserDto loginUserDto)? loginUser,
    TResult Function()? autoLoginUser,
    TResult Function()? logoutUser,
    required TResult orElse(),
  }) {
    if (autoLoginUser != null) {
      return autoLoginUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnnectServer value) connnectServer,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_AutoLoginUser value) autoLoginUser,
    required TResult Function(_LogoutUser value) logoutUser,
  }) {
    return autoLoginUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnnectServer value)? connnectServer,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_AutoLoginUser value)? autoLoginUser,
    TResult? Function(_LogoutUser value)? logoutUser,
  }) {
    return autoLoginUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnnectServer value)? connnectServer,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_AutoLoginUser value)? autoLoginUser,
    TResult Function(_LogoutUser value)? logoutUser,
    required TResult orElse(),
  }) {
    if (autoLoginUser != null) {
      return autoLoginUser(this);
    }
    return orElse();
  }
}

abstract class _AutoLoginUser implements AuthEvent {
  const factory _AutoLoginUser() = _$AutoLoginUserImpl;
}

/// @nodoc
abstract class _$$LogoutUserImplCopyWith<$Res> {
  factory _$$LogoutUserImplCopyWith(
          _$LogoutUserImpl value, $Res Function(_$LogoutUserImpl) then) =
      __$$LogoutUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutUserImpl>
    implements _$$LogoutUserImplCopyWith<$Res> {
  __$$LogoutUserImplCopyWithImpl(
      _$LogoutUserImpl _value, $Res Function(_$LogoutUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutUserImpl implements _LogoutUser {
  const _$LogoutUserImpl();

  @override
  String toString() {
    return 'AuthEvent.logoutUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connnectServer,
    required TResult Function(LoginUserDto loginUserDto) loginUser,
    required TResult Function() autoLoginUser,
    required TResult Function() logoutUser,
  }) {
    return logoutUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connnectServer,
    TResult? Function(LoginUserDto loginUserDto)? loginUser,
    TResult? Function()? autoLoginUser,
    TResult? Function()? logoutUser,
  }) {
    return logoutUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connnectServer,
    TResult Function(LoginUserDto loginUserDto)? loginUser,
    TResult Function()? autoLoginUser,
    TResult Function()? logoutUser,
    required TResult orElse(),
  }) {
    if (logoutUser != null) {
      return logoutUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnnectServer value) connnectServer,
    required TResult Function(_LoginUser value) loginUser,
    required TResult Function(_AutoLoginUser value) autoLoginUser,
    required TResult Function(_LogoutUser value) logoutUser,
  }) {
    return logoutUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnnectServer value)? connnectServer,
    TResult? Function(_LoginUser value)? loginUser,
    TResult? Function(_AutoLoginUser value)? autoLoginUser,
    TResult? Function(_LogoutUser value)? logoutUser,
  }) {
    return logoutUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnnectServer value)? connnectServer,
    TResult Function(_LoginUser value)? loginUser,
    TResult Function(_AutoLoginUser value)? autoLoginUser,
    TResult Function(_LogoutUser value)? logoutUser,
    required TResult orElse(),
  }) {
    if (logoutUser != null) {
      return logoutUser(this);
    }
    return orElse();
  }
}

abstract class _LogoutUser implements AuthEvent {
  const factory _LogoutUser() = _$LogoutUserImpl;
}

/// @nodoc
mixin _$AuthState {
  LoginDatasDto? get loginDatas => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  NavigatePage get navigatePage => throw _privateConstructorUsedError;
  AuthStatus get authStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {LoginDatasDto? loginDatas,
      String? errorMessage,
      StateStatus stateStatus,
      NavigatePage navigatePage,
      AuthStatus authStatus});

  $LoginDatasDtoCopyWith<$Res>? get loginDatas;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginDatas = freezed,
    Object? errorMessage = freezed,
    Object? stateStatus = null,
    Object? navigatePage = null,
    Object? authStatus = null,
  }) {
    return _then(_value.copyWith(
      loginDatas: freezed == loginDatas
          ? _value.loginDatas
          : loginDatas // ignore: cast_nullable_to_non_nullable
              as LoginDatasDto?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      navigatePage: null == navigatePage
          ? _value.navigatePage
          : navigatePage // ignore: cast_nullable_to_non_nullable
              as NavigatePage,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginDatasDtoCopyWith<$Res>? get loginDatas {
    if (_value.loginDatas == null) {
      return null;
    }

    return $LoginDatasDtoCopyWith<$Res>(_value.loginDatas!, (value) {
      return _then(_value.copyWith(loginDatas: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoginDatasDto? loginDatas,
      String? errorMessage,
      StateStatus stateStatus,
      NavigatePage navigatePage,
      AuthStatus authStatus});

  @override
  $LoginDatasDtoCopyWith<$Res>? get loginDatas;
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginDatas = freezed,
    Object? errorMessage = freezed,
    Object? stateStatus = null,
    Object? navigatePage = null,
    Object? authStatus = null,
  }) {
    return _then(_$AuthStateImpl(
      loginDatas: freezed == loginDatas
          ? _value.loginDatas
          : loginDatas // ignore: cast_nullable_to_non_nullable
              as LoginDatasDto?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      navigatePage: null == navigatePage
          ? _value.navigatePage
          : navigatePage // ignore: cast_nullable_to_non_nullable
              as NavigatePage,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {required this.loginDatas,
      this.errorMessage,
      required this.stateStatus,
      required this.navigatePage,
      required this.authStatus});

  @override
  final LoginDatasDto? loginDatas;
  @override
  final String? errorMessage;
  @override
  final StateStatus stateStatus;
  @override
  final NavigatePage navigatePage;
  @override
  final AuthStatus authStatus;

  @override
  String toString() {
    return 'AuthState(loginDatas: $loginDatas, errorMessage: $errorMessage, stateStatus: $stateStatus, navigatePage: $navigatePage, authStatus: $authStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.loginDatas, loginDatas) ||
                other.loginDatas == loginDatas) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.navigatePage, navigatePage) ||
                other.navigatePage == navigatePage) &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginDatas, errorMessage,
      stateStatus, navigatePage, authStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final LoginDatasDto? loginDatas,
      final String? errorMessage,
      required final StateStatus stateStatus,
      required final NavigatePage navigatePage,
      required final AuthStatus authStatus}) = _$AuthStateImpl;

  @override
  LoginDatasDto? get loginDatas;
  @override
  String? get errorMessage;
  @override
  StateStatus get stateStatus;
  @override
  NavigatePage get navigatePage;
  @override
  AuthStatus get authStatus;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

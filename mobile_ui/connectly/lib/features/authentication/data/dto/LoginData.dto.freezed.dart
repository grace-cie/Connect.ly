// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'LoginData.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginDatasDto _$LoginDatasDtoFromJson(Map<String, dynamic> json) {
  return _LoginDatasDto.fromJson(json);
}

/// @nodoc
mixin _$LoginDatasDto {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginDatasDtoCopyWith<LoginDatasDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDatasDtoCopyWith<$Res> {
  factory $LoginDatasDtoCopyWith(
          LoginDatasDto value, $Res Function(LoginDatasDto) then) =
      _$LoginDatasDtoCopyWithImpl<$Res, LoginDatasDto>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$LoginDatasDtoCopyWithImpl<$Res, $Val extends LoginDatasDto>
    implements $LoginDatasDtoCopyWith<$Res> {
  _$LoginDatasDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginDatasDtoImplCopyWith<$Res>
    implements $LoginDatasDtoCopyWith<$Res> {
  factory _$$LoginDatasDtoImplCopyWith(
          _$LoginDatasDtoImpl value, $Res Function(_$LoginDatasDtoImpl) then) =
      __$$LoginDatasDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$LoginDatasDtoImplCopyWithImpl<$Res>
    extends _$LoginDatasDtoCopyWithImpl<$Res, _$LoginDatasDtoImpl>
    implements _$$LoginDatasDtoImplCopyWith<$Res> {
  __$$LoginDatasDtoImplCopyWithImpl(
      _$LoginDatasDtoImpl _value, $Res Function(_$LoginDatasDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$LoginDatasDtoImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginDatasDtoImpl extends _LoginDatasDto {
  const _$LoginDatasDtoImpl({required this.username, required this.password})
      : super._();

  factory _$LoginDatasDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginDatasDtoImplFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginDatasDto(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginDatasDtoImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginDatasDtoImplCopyWith<_$LoginDatasDtoImpl> get copyWith =>
      __$$LoginDatasDtoImplCopyWithImpl<_$LoginDatasDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginDatasDtoImplToJson(
      this,
    );
  }
}

abstract class _LoginDatasDto extends LoginDatasDto {
  const factory _LoginDatasDto(
      {required final String username,
      required final String password}) = _$LoginDatasDtoImpl;
  const _LoginDatasDto._() : super._();

  factory _LoginDatasDto.fromJson(Map<String, dynamic> json) =
      _$LoginDatasDtoImpl.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$LoginDatasDtoImplCopyWith<_$LoginDatasDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

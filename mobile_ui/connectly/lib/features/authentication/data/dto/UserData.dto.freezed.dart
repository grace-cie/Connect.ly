// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'UserData.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDataDto _$UserDataDtoFromJson(Map<String, dynamic> json) {
  return _UserDataDto.fromJson(json);
}

/// @nodoc
mixin _$UserDataDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataDtoCopyWith<UserDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataDtoCopyWith<$Res> {
  factory $UserDataDtoCopyWith(
          UserDataDto value, $Res Function(UserDataDto) then) =
      _$UserDataDtoCopyWithImpl<$Res, UserDataDto>;
  @useResult
  $Res call({String id, String name, String userName});
}

/// @nodoc
class _$UserDataDtoCopyWithImpl<$Res, $Val extends UserDataDto>
    implements $UserDataDtoCopyWith<$Res> {
  _$UserDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? userName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDataDtoImplCopyWith<$Res>
    implements $UserDataDtoCopyWith<$Res> {
  factory _$$UserDataDtoImplCopyWith(
          _$UserDataDtoImpl value, $Res Function(_$UserDataDtoImpl) then) =
      __$$UserDataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String userName});
}

/// @nodoc
class __$$UserDataDtoImplCopyWithImpl<$Res>
    extends _$UserDataDtoCopyWithImpl<$Res, _$UserDataDtoImpl>
    implements _$$UserDataDtoImplCopyWith<$Res> {
  __$$UserDataDtoImplCopyWithImpl(
      _$UserDataDtoImpl _value, $Res Function(_$UserDataDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? userName = null,
  }) {
    return _then(_$UserDataDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataDtoImpl extends _UserDataDto {
  const _$UserDataDtoImpl(
      {required this.id, required this.name, required this.userName})
      : super._();

  factory _$UserDataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String userName;

  @override
  String toString() {
    return 'UserDataDto(id: $id, name: $name, userName: $userName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataDtoImplCopyWith<_$UserDataDtoImpl> get copyWith =>
      __$$UserDataDtoImplCopyWithImpl<_$UserDataDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataDtoImplToJson(
      this,
    );
  }
}

abstract class _UserDataDto extends UserDataDto {
  const factory _UserDataDto(
      {required final String id,
      required final String name,
      required final String userName}) = _$UserDataDtoImpl;
  const _UserDataDto._() : super._();

  factory _UserDataDto.fromJson(Map<String, dynamic> json) =
      _$UserDataDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get userName;
  @override
  @JsonKey(ignore: true)
  _$$UserDataDtoImplCopyWith<_$UserDataDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'PostData.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostDataDto _$PostDataDtoFromJson(Map<String, dynamic> json) {
  return _PostDataDto.fromJson(json);
}

/// @nodoc
mixin _$PostDataDto {
  int get currentPage => throw _privateConstructorUsedError;
  int get maxPage => throw _privateConstructorUsedError;
  List<PostDto> get postsList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostDataDtoCopyWith<PostDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDataDtoCopyWith<$Res> {
  factory $PostDataDtoCopyWith(
          PostDataDto value, $Res Function(PostDataDto) then) =
      _$PostDataDtoCopyWithImpl<$Res, PostDataDto>;
  @useResult
  $Res call({int currentPage, int maxPage, List<PostDto> postsList});
}

/// @nodoc
class _$PostDataDtoCopyWithImpl<$Res, $Val extends PostDataDto>
    implements $PostDataDtoCopyWith<$Res> {
  _$PostDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? maxPage = null,
    Object? postsList = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      maxPage: null == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int,
      postsList: null == postsList
          ? _value.postsList
          : postsList // ignore: cast_nullable_to_non_nullable
              as List<PostDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostDataDtoImplCopyWith<$Res>
    implements $PostDataDtoCopyWith<$Res> {
  factory _$$PostDataDtoImplCopyWith(
          _$PostDataDtoImpl value, $Res Function(_$PostDataDtoImpl) then) =
      __$$PostDataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentPage, int maxPage, List<PostDto> postsList});
}

/// @nodoc
class __$$PostDataDtoImplCopyWithImpl<$Res>
    extends _$PostDataDtoCopyWithImpl<$Res, _$PostDataDtoImpl>
    implements _$$PostDataDtoImplCopyWith<$Res> {
  __$$PostDataDtoImplCopyWithImpl(
      _$PostDataDtoImpl _value, $Res Function(_$PostDataDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? maxPage = null,
    Object? postsList = null,
  }) {
    return _then(_$PostDataDtoImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      maxPage: null == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int,
      postsList: null == postsList
          ? _value._postsList
          : postsList // ignore: cast_nullable_to_non_nullable
              as List<PostDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostDataDtoImpl extends _PostDataDto {
  const _$PostDataDtoImpl(
      {required this.currentPage,
      required this.maxPage,
      required final List<PostDto> postsList})
      : _postsList = postsList,
        super._();

  factory _$PostDataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostDataDtoImplFromJson(json);

  @override
  final int currentPage;
  @override
  final int maxPage;
  final List<PostDto> _postsList;
  @override
  List<PostDto> get postsList {
    if (_postsList is EqualUnmodifiableListView) return _postsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_postsList);
  }

  @override
  String toString() {
    return 'PostDataDto(currentPage: $currentPage, maxPage: $maxPage, postsList: $postsList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostDataDtoImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.maxPage, maxPage) || other.maxPage == maxPage) &&
            const DeepCollectionEquality()
                .equals(other._postsList, _postsList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentPage, maxPage,
      const DeepCollectionEquality().hash(_postsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostDataDtoImplCopyWith<_$PostDataDtoImpl> get copyWith =>
      __$$PostDataDtoImplCopyWithImpl<_$PostDataDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostDataDtoImplToJson(
      this,
    );
  }
}

abstract class _PostDataDto extends PostDataDto {
  const factory _PostDataDto(
      {required final int currentPage,
      required final int maxPage,
      required final List<PostDto> postsList}) = _$PostDataDtoImpl;
  const _PostDataDto._() : super._();

  factory _PostDataDto.fromJson(Map<String, dynamic> json) =
      _$PostDataDtoImpl.fromJson;

  @override
  int get currentPage;
  @override
  int get maxPage;
  @override
  List<PostDto> get postsList;
  @override
  @JsonKey(ignore: true)
  _$$PostDataDtoImplCopyWith<_$PostDataDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostsEvent {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StateStatus stateStatus, int page) getPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StateStatus stateStatus, int page)? getPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StateStatus stateStatus, int page)? getPosts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPosts value) getPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPosts value)? getPosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPosts value)? getPosts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostsEventCopyWith<PostsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsEventCopyWith<$Res> {
  factory $PostsEventCopyWith(
          PostsEvent value, $Res Function(PostsEvent) then) =
      _$PostsEventCopyWithImpl<$Res, PostsEvent>;
  @useResult
  $Res call({StateStatus stateStatus, int page});
}

/// @nodoc
class _$PostsEventCopyWithImpl<$Res, $Val extends PostsEvent>
    implements $PostsEventCopyWith<$Res> {
  _$PostsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPostsImplCopyWith<$Res>
    implements $PostsEventCopyWith<$Res> {
  factory _$$GetPostsImplCopyWith(
          _$GetPostsImpl value, $Res Function(_$GetPostsImpl) then) =
      __$$GetPostsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StateStatus stateStatus, int page});
}

/// @nodoc
class __$$GetPostsImplCopyWithImpl<$Res>
    extends _$PostsEventCopyWithImpl<$Res, _$GetPostsImpl>
    implements _$$GetPostsImplCopyWith<$Res> {
  __$$GetPostsImplCopyWithImpl(
      _$GetPostsImpl _value, $Res Function(_$GetPostsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? page = null,
  }) {
    return _then(_$GetPostsImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetPostsImpl implements _GetPosts {
  const _$GetPostsImpl({required this.stateStatus, required this.page});

  @override
  final StateStatus stateStatus;
  @override
  final int page;

  @override
  String toString() {
    return 'PostsEvent.getPosts(stateStatus: $stateStatus, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPostsImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stateStatus, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPostsImplCopyWith<_$GetPostsImpl> get copyWith =>
      __$$GetPostsImplCopyWithImpl<_$GetPostsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StateStatus stateStatus, int page) getPosts,
  }) {
    return getPosts(stateStatus, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StateStatus stateStatus, int page)? getPosts,
  }) {
    return getPosts?.call(stateStatus, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StateStatus stateStatus, int page)? getPosts,
    required TResult orElse(),
  }) {
    if (getPosts != null) {
      return getPosts(stateStatus, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPosts value) getPosts,
  }) {
    return getPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPosts value)? getPosts,
  }) {
    return getPosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPosts value)? getPosts,
    required TResult orElse(),
  }) {
    if (getPosts != null) {
      return getPosts(this);
    }
    return orElse();
  }
}

abstract class _GetPosts implements PostsEvent {
  const factory _GetPosts(
      {required final StateStatus stateStatus,
      required final int page}) = _$GetPostsImpl;

  @override
  StateStatus get stateStatus;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$GetPostsImplCopyWith<_$GetPostsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostsState {
  String? get errorMessage => throw _privateConstructorUsedError;
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  PostDataDto? get postData => throw _privateConstructorUsedError;
  List<PostDto> get postsDataValueList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostsStateCopyWith<PostsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsStateCopyWith<$Res> {
  factory $PostsStateCopyWith(
          PostsState value, $Res Function(PostsState) then) =
      _$PostsStateCopyWithImpl<$Res, PostsState>;
  @useResult
  $Res call(
      {String? errorMessage,
      StateStatus stateStatus,
      PostDataDto? postData,
      List<PostDto> postsDataValueList});

  $PostDataDtoCopyWith<$Res>? get postData;
}

/// @nodoc
class _$PostsStateCopyWithImpl<$Res, $Val extends PostsState>
    implements $PostsStateCopyWith<$Res> {
  _$PostsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? stateStatus = null,
    Object? postData = freezed,
    Object? postsDataValueList = null,
  }) {
    return _then(_value.copyWith(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      postData: freezed == postData
          ? _value.postData
          : postData // ignore: cast_nullable_to_non_nullable
              as PostDataDto?,
      postsDataValueList: null == postsDataValueList
          ? _value.postsDataValueList
          : postsDataValueList // ignore: cast_nullable_to_non_nullable
              as List<PostDto>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostDataDtoCopyWith<$Res>? get postData {
    if (_value.postData == null) {
      return null;
    }

    return $PostDataDtoCopyWith<$Res>(_value.postData!, (value) {
      return _then(_value.copyWith(postData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostsStateImplCopyWith<$Res>
    implements $PostsStateCopyWith<$Res> {
  factory _$$PostsStateImplCopyWith(
          _$PostsStateImpl value, $Res Function(_$PostsStateImpl) then) =
      __$$PostsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? errorMessage,
      StateStatus stateStatus,
      PostDataDto? postData,
      List<PostDto> postsDataValueList});

  @override
  $PostDataDtoCopyWith<$Res>? get postData;
}

/// @nodoc
class __$$PostsStateImplCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res, _$PostsStateImpl>
    implements _$$PostsStateImplCopyWith<$Res> {
  __$$PostsStateImplCopyWithImpl(
      _$PostsStateImpl _value, $Res Function(_$PostsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? stateStatus = null,
    Object? postData = freezed,
    Object? postsDataValueList = null,
  }) {
    return _then(_$PostsStateImpl(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      postData: freezed == postData
          ? _value.postData
          : postData // ignore: cast_nullable_to_non_nullable
              as PostDataDto?,
      postsDataValueList: null == postsDataValueList
          ? _value._postsDataValueList
          : postsDataValueList // ignore: cast_nullable_to_non_nullable
              as List<PostDto>,
    ));
  }
}

/// @nodoc

class _$PostsStateImpl implements _PostsState {
  const _$PostsStateImpl(
      {this.errorMessage,
      required this.stateStatus,
      this.postData,
      required final List<PostDto> postsDataValueList})
      : _postsDataValueList = postsDataValueList;

  @override
  final String? errorMessage;
  @override
  final StateStatus stateStatus;
  @override
  final PostDataDto? postData;
  final List<PostDto> _postsDataValueList;
  @override
  List<PostDto> get postsDataValueList {
    if (_postsDataValueList is EqualUnmodifiableListView)
      return _postsDataValueList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_postsDataValueList);
  }

  @override
  String toString() {
    return 'PostsState(errorMessage: $errorMessage, stateStatus: $stateStatus, postData: $postData, postsDataValueList: $postsDataValueList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostsStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.postData, postData) ||
                other.postData == postData) &&
            const DeepCollectionEquality()
                .equals(other._postsDataValueList, _postsDataValueList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage, stateStatus,
      postData, const DeepCollectionEquality().hash(_postsDataValueList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostsStateImplCopyWith<_$PostsStateImpl> get copyWith =>
      __$$PostsStateImplCopyWithImpl<_$PostsStateImpl>(this, _$identity);
}

abstract class _PostsState implements PostsState {
  const factory _PostsState(
      {final String? errorMessage,
      required final StateStatus stateStatus,
      final PostDataDto? postData,
      required final List<PostDto> postsDataValueList}) = _$PostsStateImpl;

  @override
  String? get errorMessage;
  @override
  StateStatus get stateStatus;
  @override
  PostDataDto? get postData;
  @override
  List<PostDto> get postsDataValueList;
  @override
  @JsonKey(ignore: true)
  _$$PostsStateImplCopyWith<_$PostsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

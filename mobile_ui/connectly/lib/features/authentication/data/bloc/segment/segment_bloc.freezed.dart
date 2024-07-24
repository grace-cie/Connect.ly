// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'segment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SegmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) listenSegmentStream,
    required TResult Function() disposeSegmentListener,
    required TResult Function(String segment) updateSegment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? listenSegmentStream,
    TResult? Function()? disposeSegmentListener,
    TResult? Function(String segment)? updateSegment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? listenSegmentStream,
    TResult Function()? disposeSegmentListener,
    TResult Function(String segment)? updateSegment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenSegmentStream value) listenSegmentStream,
    required TResult Function(_DisposeSegmentListener value)
        disposeSegmentListener,
    required TResult Function(_UpdateSegment value) updateSegment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListenSegmentStream value)? listenSegmentStream,
    TResult? Function(_DisposeSegmentListener value)? disposeSegmentListener,
    TResult? Function(_UpdateSegment value)? updateSegment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenSegmentStream value)? listenSegmentStream,
    TResult Function(_DisposeSegmentListener value)? disposeSegmentListener,
    TResult Function(_UpdateSegment value)? updateSegment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SegmentEventCopyWith<$Res> {
  factory $SegmentEventCopyWith(
          SegmentEvent value, $Res Function(SegmentEvent) then) =
      _$SegmentEventCopyWithImpl<$Res, SegmentEvent>;
}

/// @nodoc
class _$SegmentEventCopyWithImpl<$Res, $Val extends SegmentEvent>
    implements $SegmentEventCopyWith<$Res> {
  _$SegmentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ListenSegmentStreamImplCopyWith<$Res> {
  factory _$$ListenSegmentStreamImplCopyWith(_$ListenSegmentStreamImpl value,
          $Res Function(_$ListenSegmentStreamImpl) then) =
      __$$ListenSegmentStreamImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$ListenSegmentStreamImplCopyWithImpl<$Res>
    extends _$SegmentEventCopyWithImpl<$Res, _$ListenSegmentStreamImpl>
    implements _$$ListenSegmentStreamImplCopyWith<$Res> {
  __$$ListenSegmentStreamImplCopyWithImpl(_$ListenSegmentStreamImpl _value,
      $Res Function(_$ListenSegmentStreamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$ListenSegmentStreamImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$ListenSegmentStreamImpl implements _ListenSegmentStream {
  const _$ListenSegmentStreamImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'SegmentEvent.listenSegmentStream(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListenSegmentStreamImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListenSegmentStreamImplCopyWith<_$ListenSegmentStreamImpl> get copyWith =>
      __$$ListenSegmentStreamImplCopyWithImpl<_$ListenSegmentStreamImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) listenSegmentStream,
    required TResult Function() disposeSegmentListener,
    required TResult Function(String segment) updateSegment,
  }) {
    return listenSegmentStream(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? listenSegmentStream,
    TResult? Function()? disposeSegmentListener,
    TResult? Function(String segment)? updateSegment,
  }) {
    return listenSegmentStream?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? listenSegmentStream,
    TResult Function()? disposeSegmentListener,
    TResult Function(String segment)? updateSegment,
    required TResult orElse(),
  }) {
    if (listenSegmentStream != null) {
      return listenSegmentStream(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenSegmentStream value) listenSegmentStream,
    required TResult Function(_DisposeSegmentListener value)
        disposeSegmentListener,
    required TResult Function(_UpdateSegment value) updateSegment,
  }) {
    return listenSegmentStream(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListenSegmentStream value)? listenSegmentStream,
    TResult? Function(_DisposeSegmentListener value)? disposeSegmentListener,
    TResult? Function(_UpdateSegment value)? updateSegment,
  }) {
    return listenSegmentStream?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenSegmentStream value)? listenSegmentStream,
    TResult Function(_DisposeSegmentListener value)? disposeSegmentListener,
    TResult Function(_UpdateSegment value)? updateSegment,
    required TResult orElse(),
  }) {
    if (listenSegmentStream != null) {
      return listenSegmentStream(this);
    }
    return orElse();
  }
}

abstract class _ListenSegmentStream implements SegmentEvent {
  const factory _ListenSegmentStream({required final BuildContext context}) =
      _$ListenSegmentStreamImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$ListenSegmentStreamImplCopyWith<_$ListenSegmentStreamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisposeSegmentListenerImplCopyWith<$Res> {
  factory _$$DisposeSegmentListenerImplCopyWith(
          _$DisposeSegmentListenerImpl value,
          $Res Function(_$DisposeSegmentListenerImpl) then) =
      __$$DisposeSegmentListenerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisposeSegmentListenerImplCopyWithImpl<$Res>
    extends _$SegmentEventCopyWithImpl<$Res, _$DisposeSegmentListenerImpl>
    implements _$$DisposeSegmentListenerImplCopyWith<$Res> {
  __$$DisposeSegmentListenerImplCopyWithImpl(
      _$DisposeSegmentListenerImpl _value,
      $Res Function(_$DisposeSegmentListenerImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisposeSegmentListenerImpl implements _DisposeSegmentListener {
  const _$DisposeSegmentListenerImpl();

  @override
  String toString() {
    return 'SegmentEvent.disposeSegmentListener()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisposeSegmentListenerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) listenSegmentStream,
    required TResult Function() disposeSegmentListener,
    required TResult Function(String segment) updateSegment,
  }) {
    return disposeSegmentListener();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? listenSegmentStream,
    TResult? Function()? disposeSegmentListener,
    TResult? Function(String segment)? updateSegment,
  }) {
    return disposeSegmentListener?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? listenSegmentStream,
    TResult Function()? disposeSegmentListener,
    TResult Function(String segment)? updateSegment,
    required TResult orElse(),
  }) {
    if (disposeSegmentListener != null) {
      return disposeSegmentListener();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenSegmentStream value) listenSegmentStream,
    required TResult Function(_DisposeSegmentListener value)
        disposeSegmentListener,
    required TResult Function(_UpdateSegment value) updateSegment,
  }) {
    return disposeSegmentListener(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListenSegmentStream value)? listenSegmentStream,
    TResult? Function(_DisposeSegmentListener value)? disposeSegmentListener,
    TResult? Function(_UpdateSegment value)? updateSegment,
  }) {
    return disposeSegmentListener?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenSegmentStream value)? listenSegmentStream,
    TResult Function(_DisposeSegmentListener value)? disposeSegmentListener,
    TResult Function(_UpdateSegment value)? updateSegment,
    required TResult orElse(),
  }) {
    if (disposeSegmentListener != null) {
      return disposeSegmentListener(this);
    }
    return orElse();
  }
}

abstract class _DisposeSegmentListener implements SegmentEvent {
  const factory _DisposeSegmentListener() = _$DisposeSegmentListenerImpl;
}

/// @nodoc
abstract class _$$UpdateSegmentImplCopyWith<$Res> {
  factory _$$UpdateSegmentImplCopyWith(
          _$UpdateSegmentImpl value, $Res Function(_$UpdateSegmentImpl) then) =
      __$$UpdateSegmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String segment});
}

/// @nodoc
class __$$UpdateSegmentImplCopyWithImpl<$Res>
    extends _$SegmentEventCopyWithImpl<$Res, _$UpdateSegmentImpl>
    implements _$$UpdateSegmentImplCopyWith<$Res> {
  __$$UpdateSegmentImplCopyWithImpl(
      _$UpdateSegmentImpl _value, $Res Function(_$UpdateSegmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? segment = null,
  }) {
    return _then(_$UpdateSegmentImpl(
      segment: null == segment
          ? _value.segment
          : segment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateSegmentImpl implements _UpdateSegment {
  const _$UpdateSegmentImpl({required this.segment});

  @override
  final String segment;

  @override
  String toString() {
    return 'SegmentEvent.updateSegment(segment: $segment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSegmentImpl &&
            (identical(other.segment, segment) || other.segment == segment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, segment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSegmentImplCopyWith<_$UpdateSegmentImpl> get copyWith =>
      __$$UpdateSegmentImplCopyWithImpl<_$UpdateSegmentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) listenSegmentStream,
    required TResult Function() disposeSegmentListener,
    required TResult Function(String segment) updateSegment,
  }) {
    return updateSegment(segment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? listenSegmentStream,
    TResult? Function()? disposeSegmentListener,
    TResult? Function(String segment)? updateSegment,
  }) {
    return updateSegment?.call(segment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? listenSegmentStream,
    TResult Function()? disposeSegmentListener,
    TResult Function(String segment)? updateSegment,
    required TResult orElse(),
  }) {
    if (updateSegment != null) {
      return updateSegment(segment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenSegmentStream value) listenSegmentStream,
    required TResult Function(_DisposeSegmentListener value)
        disposeSegmentListener,
    required TResult Function(_UpdateSegment value) updateSegment,
  }) {
    return updateSegment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListenSegmentStream value)? listenSegmentStream,
    TResult? Function(_DisposeSegmentListener value)? disposeSegmentListener,
    TResult? Function(_UpdateSegment value)? updateSegment,
  }) {
    return updateSegment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenSegmentStream value)? listenSegmentStream,
    TResult Function(_DisposeSegmentListener value)? disposeSegmentListener,
    TResult Function(_UpdateSegment value)? updateSegment,
    required TResult orElse(),
  }) {
    if (updateSegment != null) {
      return updateSegment(this);
    }
    return orElse();
  }
}

abstract class _UpdateSegment implements SegmentEvent {
  const factory _UpdateSegment({required final String segment}) =
      _$UpdateSegmentImpl;

  String get segment;
  @JsonKey(ignore: true)
  _$$UpdateSegmentImplCopyWith<_$UpdateSegmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SegmentState {
  String get segment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SegmentStateCopyWith<SegmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SegmentStateCopyWith<$Res> {
  factory $SegmentStateCopyWith(
          SegmentState value, $Res Function(SegmentState) then) =
      _$SegmentStateCopyWithImpl<$Res, SegmentState>;
  @useResult
  $Res call({String segment});
}

/// @nodoc
class _$SegmentStateCopyWithImpl<$Res, $Val extends SegmentState>
    implements $SegmentStateCopyWith<$Res> {
  _$SegmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? segment = null,
  }) {
    return _then(_value.copyWith(
      segment: null == segment
          ? _value.segment
          : segment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SegmentStateImplCopyWith<$Res>
    implements $SegmentStateCopyWith<$Res> {
  factory _$$SegmentStateImplCopyWith(
          _$SegmentStateImpl value, $Res Function(_$SegmentStateImpl) then) =
      __$$SegmentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String segment});
}

/// @nodoc
class __$$SegmentStateImplCopyWithImpl<$Res>
    extends _$SegmentStateCopyWithImpl<$Res, _$SegmentStateImpl>
    implements _$$SegmentStateImplCopyWith<$Res> {
  __$$SegmentStateImplCopyWithImpl(
      _$SegmentStateImpl _value, $Res Function(_$SegmentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? segment = null,
  }) {
    return _then(_$SegmentStateImpl(
      segment: null == segment
          ? _value.segment
          : segment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SegmentStateImpl implements _SegmentState {
  const _$SegmentStateImpl({required this.segment});

  @override
  final String segment;

  @override
  String toString() {
    return 'SegmentState(segment: $segment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SegmentStateImpl &&
            (identical(other.segment, segment) || other.segment == segment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, segment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SegmentStateImplCopyWith<_$SegmentStateImpl> get copyWith =>
      __$$SegmentStateImplCopyWithImpl<_$SegmentStateImpl>(this, _$identity);
}

abstract class _SegmentState implements SegmentState {
  const factory _SegmentState({required final String segment}) =
      _$SegmentStateImpl;

  @override
  String get segment;
  @override
  @JsonKey(ignore: true)
  _$$SegmentStateImplCopyWith<_$SegmentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

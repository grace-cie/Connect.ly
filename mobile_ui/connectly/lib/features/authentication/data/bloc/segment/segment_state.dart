part of 'segment_bloc.dart';

@freezed
class SegmentState with _$SegmentState {
  const factory SegmentState({
    required String segment,
  }) = _SegmentState;

  factory SegmentState.initial() => const SegmentState(segment: '');
}

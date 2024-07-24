part of 'segment_bloc.dart';

@freezed
class SegmentEvent with _$SegmentEvent {
  const factory SegmentEvent.listenSegmentStream(
      {required BuildContext context}) = _ListenSegmentStream;

  const factory SegmentEvent.disposeSegmentListener() = _DisposeSegmentListener;

  const factory SegmentEvent.updateSegment({required String segment}) =
      _UpdateSegment;
}

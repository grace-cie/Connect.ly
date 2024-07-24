import 'package:connectly/core/router/segment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'segment_event.dart';
part 'segment_state.dart';
part 'segment_bloc.freezed.dart';

@lazySingleton
class SegmentBloc extends Bloc<SegmentEvent, SegmentState> {
  SegmentBloc(Segment segment) : super(SegmentState.initial()) {
    on<_ListenSegmentStream>(
        (_ListenSegmentStream event, Emitter<SegmentState> emit) async {
      final Stream<String> segmentStream =
          segment.listenSegmentStream(event.context);

      segmentStream.listen((String value) async {
        add(SegmentEvent.updateSegment(segment: value));
      });
    });

    on<_DisposeSegmentListener>(
        (_DisposeSegmentListener event, Emitter<SegmentState> emit) {
      segment.disposeSegmentListener();
    });

    on<_UpdateSegment>((_UpdateSegment event, Emitter<SegmentState> emit) {
      emit(state.copyWith(segment: event.segment));
    });
  }
}

import 'package:connectly/features/authentication/data/bloc/segment/segment_bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class ListenSegmentStreamUsecase {
  ListenSegmentStreamUsecase({
    required this.segmentBloc,
  });

  final SegmentBloc segmentBloc;

  void execute(BuildContext context) {
    segmentBloc.add(SegmentEvent.listenSegmentStream(context: context));
  }
}

import 'package:connectly/features/authentication/data/bloc/segment/segment_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class DisposeSegmentListenerUsecase {
  DisposeSegmentListenerUsecase({
    required this.segmentBloc,
  });

  final SegmentBloc segmentBloc;

  void execute() {
    segmentBloc.add(const SegmentEvent.disposeSegmentListener());
  }
}

import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

abstract class Segment {
  String getCurrent(BuildContext context);
  Stream<String> listenSegmentStream(BuildContext context);
  void disposeSegmentListener();
}

@LazySingleton(as: Segment)
class SegmentImpl implements Segment {
  late StreamController<String> segmentController;

  @override
  String getCurrent(BuildContext context) {
    final StackRouter router = AutoRouter.of(context);
    final List<String> segments = router.currentSegments.isNotEmpty
        ? router.currentSegments[router.currentSegments.length - 1].segments
        : <String>[];

    return segments.isNotEmpty ? segments[segments.length - 1] : '';
  }

  @override
  Stream<String> listenSegmentStream(BuildContext context) {
    final StackRouter router = AutoRouter.of(context);
    segmentController = StreamController<String>.broadcast();
    router.addListener(() {
      segmentController.sink.add(getCurrent(context));
    });

    return segmentController.stream;
  }

  @override
  void disposeSegmentListener() {
    segmentController.close();
  }
}

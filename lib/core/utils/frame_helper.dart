import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class FrameHelper {
  static Future<void> waitForFrames(int frameCount) async {
    for (int i = 0; i < frameCount; i++) {
      await WidgetsBinding.instance.endOfFrame;
    }
  }

  static Future<void> waitForWidgetReady() async {
    await WidgetsBinding.instance.endOfFrame;
    await Future.delayed(const Duration(milliseconds: 100));
    await WidgetsBinding.instance.endOfFrame;
  }

  static Future<void> waitForPageReady() async {
    final completer = Completer<void>();

    SchedulerBinding.instance.addPostFrameCallback((_) {
      completer.complete();
    });

    await completer.future;
    await waitForWidgetReady();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

dismissibled(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int widgeti = 0;
  int durationi = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        switch (widgeti++) {
          case 0:
            argsMap[#child] = arg;
          case 1:
            argsMap[#background] = arg;
          case 2:
            argsMap[#secondaryBackground] = arg;
        }
      case Future<bool?> Function(DismissDirection) arg:
        argsMap[#confirmDismiss] = arg;
      case void Function() arg:
        argsMap[#onResize] = arg;
      case void Function(DismissUpdateDetails) arg:
        argsMap[#onUpdate] = arg;
      case void Function(DismissDirection) arg:
        argsMap[#onDismissed] = arg;
      case DismissDirection arg:
        argsMap[#direction] = arg;
      case Duration arg:
        switch (durationi++) {
          case 0:
            argsMap[#resizeDuration] = arg;
          case 1:
            argsMap[#movementDuration] = arg;
        }
      case Map<DismissDirection, double> arg:
        argsMap[#dismissThresholds] = arg;
      case double arg:
        argsMap[#crossAxisEndOffset] = arg;
      case int arg:
        argsMap[#crossAxisEndOffset] = arg.toDouble();
      case DragStartBehavior arg:
        argsMap[#dragStartBehavior] = arg;
      case HitTestBehavior arg:
        argsMap[#behavior] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#key] == null || argsMap[#child] == null) {
      throw FlutterError("Dismissibled requires `key:Key` and `child:Widget`");
    }
    return true;
  }());

  return Function.apply(Dismissible.new, [], argsMap);
}

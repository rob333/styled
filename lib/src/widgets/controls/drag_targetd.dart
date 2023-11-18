import 'package:flutter/material.dart';

dragTargetd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int fni = 0;
  int fndetaili = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget Function(BuildContext, List, List<dynamic>) arg:
        argsMap[#builder] = arg;
      case bool Function(dynamic) arg:
        switch (fni++) {
          case 0:
            argsMap[#onWillAccept] = arg;
          case 1:
            argsMap[#onAccept] = arg;
          case 2:
            argsMap[#onLeave] = arg;
        }
      case bool Function(DragTargetDetails) arg:
        switch (fndetaili++) {
          case 0:
            argsMap[#onWillAcceptWithDetails] = arg;
          case 1:
            argsMap[#onAcceptWithDetails] = arg;
          case 2:
            argsMap[#onMove] = arg;
        }
      case HitTestBehavior arg:
        argsMap[#hitTestBehavior] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#builder] == null) {
      throw FlutterError(
          "DragTargetd requires `builder:Widget Function(BuildContext, List, List<dynamic>)`");
    }
    return true;
  }());

  return Function.apply(DragTarget.new, [], argsMap);
}

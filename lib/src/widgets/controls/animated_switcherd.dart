import 'package:flutter/material.dart';

animatedSwitcherd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int curvei = 0;
  int durationi = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case Duration arg:
        switch (durationi++) {
          case 0:
            argsMap[#duration] = arg;
          case 1:
            argsMap[#reverseDuration] = arg;
        }
      case Curve arg:
        switch (curvei++) {
          case 0:
            argsMap[#switchInCurve] = arg;
          case 1:
            argsMap[#switchOutCurve] = arg;
        }
      case Widget Function(Widget, Animation<double>) arg:
        argsMap[#transitionBuilder] = arg;
      case Widget Function(Widget?, List<Widget>) arg:
        argsMap[#layoutBuilder] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#duration] == null) {
      throw FlutterError("AnimatedSwitcherd without `duration:Duration`");
    }
    return true;
  }());

  return Function.apply(AnimatedSwitcher.new, [], argsMap);
}

import 'package:flutter/material.dart';

animatedCrossFaded(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int durationi = 0;
  int widgeti = 0;
  int curvei = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        switch (widgeti++) {
          case 0:
            argsMap[#firstChild] = arg;
          case 1:
            argsMap[#secondChild] = arg;
        }
      case Curve arg:
        switch (curvei++) {
          case 0:
            argsMap[#firstCurve] = arg;
          case 1:
            argsMap[#secondCurve] = arg;
          case 2:
            argsMap[#sizeCurve] = arg;
        }
      case AlignmentGeometry arg:
        argsMap[#alignment] = arg;
      case CrossFadeState arg:
        argsMap[#crossFadeState] = arg;
      case Duration arg:
        switch (durationi++) {
          case 0:
            argsMap[#duration] = arg;
          case 1:
            argsMap[#reverseDuration] = arg;
        }
      case Widget Function(Widget, Key, Widget, Key) arg:
        argsMap[#layoutBuilder] = arg;
      case bool arg:
        argsMap[#excludeBottomFocus] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#firstChild] == null || argsMap[#secondChild] == null || argsMap[#crossFadeState] == null || argsMap[#duration] == null) {
      throw FlutterError("AnimatedCrossFaded requires `firstChild:Widget`, `secondChild:Widget`, `crossFadeState:CrossFadeState` and `duration:Duration`.");
    }
    return true;
  }());

  return Function.apply(AnimatedCrossFade.new, [], argsMap);
}

import 'package:flutter/material.dart';

animatedPaddingd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case EdgeInsetsGeometry arg:
        argsMap[#padding] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case Curve arg:
        argsMap[#curve] = arg;
      case Duration arg:
        argsMap[#duration] = arg;
      case void Function() arg:
        argsMap[#onEnd] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#padding] == null || argsMap[#duration]) {
      throw FlutterError("AnimatedPositionedd without `padding:EdgeInsetsGeometry` and `duration:Duration`");
    }
    return true;
  }());

  return Function.apply(AnimatedPadding.new, [], argsMap);
}

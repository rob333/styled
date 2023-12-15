import 'package:flutter/material.dart';

animatedAlignd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int doublei = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case AlignmentGeometry arg:
        argsMap[#alignment] = arg;
      case Duration arg:
        argsMap[#duration] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#widthFactor] = arg;
          case 1:
            argsMap[#heightFactor] = arg;
        }
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#widthFactor] = arg.toDouble();
          case 1:
            argsMap[#heightFactor] = arg.toDouble();
        }
      case Curve arg:
        argsMap[#curve] = arg;
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
    if (argsMap[#alignment] == null || argsMap[#duration] == null) {
      throw FlutterError(
          "AnimatedAlignd requires `alignment:AlignmentGeometry` and `duration:Duration`");
    }
    return true;
  }());

  return Function.apply(AnimatedAlign.new, [], argsMap);
}

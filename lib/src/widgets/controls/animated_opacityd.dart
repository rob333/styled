import 'package:flutter/material.dart';

animatedOpacityd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case double arg:
        argsMap[#opacity] = arg;
      case Curve arg:
        argsMap[#curve] = arg;
      case Duration arg:
        argsMap[#duration] = arg;
      case void Function() arg:
        argsMap[#onEnd] = arg;
      case bool arg:
        argsMap[#alwaysIncludeSemantics] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#opacity] == null || argsMap[#duration]) {
      throw FlutterError("AnimatedOpacityd without `opacity:double` and `duration:Duration`");
    }
    return true;
  }());

  return Function.apply(AnimatedOpacity.new, [], argsMap);
}

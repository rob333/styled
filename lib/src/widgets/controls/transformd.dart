import 'package:flutter/material.dart';

transformd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Matrix4 arg:
        argsMap[#transform] = arg;
      case Offset arg:
        argsMap[#origin] = arg;
      case AlignmentGeometry arg:
        argsMap[#alignment] = arg;
      case bool arg:
        argsMap[#transformHitTests] = arg;
      case FilterQuality arg:
        argsMap[#filterQuality] = arg;
      case Widget arg:
        argsMap[#child] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#transform] == null) {
      throw FlutterError("Transformd without `transform:Matrix4`");
    }
    return true;
  }());

  return Function.apply(Transform.new, [], argsMap);
}

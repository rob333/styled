import 'package:flutter/material.dart';

rotated(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case double arg:
        argsMap[#angle] = arg;
      case int arg:
        argsMap[#angle] = arg.toDouble();
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
    if (argsMap[#angle] == null) {
      throw FlutterError("rotated requires `angle:double`");
    }
    return true;
  }());

  return Function.apply(Transform.rotate, [], argsMap);
}

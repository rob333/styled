import 'package:flutter/material.dart';

scaled(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  final List<double> doubles = [];

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case double arg:
        doubles.add(arg);
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

  switch (doubles.length) {
    case 1:
      argsMap[#scale] = doubles[0];
    case 2:
      argsMap[#scaleX] = doubles[0];
      argsMap[#scaleY] = doubles[1];
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (doubles.isEmpty) {
      throw FlutterError("Scaled must assign at lease one double for `scale`.");
    }
    return true;
  }());

  return Function.apply(Transform.scale, [], argsMap);
}

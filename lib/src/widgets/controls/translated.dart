import 'package:flutter/material.dart';

translated(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Offset arg:
        argsMap[#offset] = arg;
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
    if (argsMap[#offset] == null) {
      throw FlutterError("translated requires `offset:Offset`");
    }
    return true;
  }());

  return Function.apply(Transform.translate, [], argsMap);
}

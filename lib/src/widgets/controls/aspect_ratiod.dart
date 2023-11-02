import 'package:flutter/material.dart';

aspectRatiod(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case double arg:
        argsMap[#aspectRatio] = arg;
      case int arg:
        argsMap[#aspectRatio] = arg.toDouble();
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
    if (argsMap[#aspectRatio] == null) {
      throw FlutterError("AspectRatiod without `aspectRatio:double`");
    }
    return true;
  }());

  return Function.apply(AspectRatio.new, [], argsMap);
}

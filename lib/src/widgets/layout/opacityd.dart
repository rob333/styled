import 'package:flutter/material.dart';

opacityd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case double arg:
        argsMap[#opacity] = arg;
      case bool arg:
        argsMap[#alwaysIncludeSemantics] = arg;
      case Widget arg:
        argsMap[#child] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  assert(() {
    if (argsMap[#opacity] == null) {
      throw FlutterError("Opacity without `opacity:double`");
    }
    return true;
  }());

  return Function.apply(Opacity.new, [], argsMap);
}

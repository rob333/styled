import 'package:flutter/material.dart';

animatedBuilderd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Listenable arg:
        argsMap[#animation] = arg;
      case Widget Function(BuildContext, Widget?) arg:
        argsMap[#builder] = arg;
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
    if (argsMap[#animation] == null || argsMap[#builder] == null) {
      throw FlutterError("AnimatedBuilderd requires `animation:Listenable` and `builder:Function`");
    }
    return true;
  }());

  return Function.apply(AnimatedBuilder.new, [], argsMap);
}

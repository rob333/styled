import 'package:flutter/material.dart';

rotatedBoxd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case int arg:
        argsMap[#quarterTurns] = arg;
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
    if (argsMap[#quarterTurns] == null) {
      throw FlutterError("RotatedBoxd requires `quarterTurns:int`");
    }
    return true;
  }());

  return Function.apply(RotatedBox.new, [], argsMap);
}

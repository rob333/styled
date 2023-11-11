import 'package:flutter/material.dart';

rawMagnifierd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case MagnifierDecoration arg:
        argsMap[#decoration] = arg;
      case Offset arg:
        argsMap[#focalPointOffset] = arg;
      case double arg:
        argsMap[#magnificationScale] = arg;
      case int arg:
        argsMap[#magnificationScale] = arg.toDouble();
      case Size arg:
        argsMap[#size] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#size] == null) {
      throw FlutterError("RawMagnifierd requires `size:Size`");
    }
    return true;
  }());

  return Function.apply(RawMagnifier.new, [], argsMap);
}

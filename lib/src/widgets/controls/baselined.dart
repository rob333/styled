import 'package:flutter/material.dart';

baselined(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case double arg:
        argsMap[#baseline] = arg;
      case int arg:
        argsMap[#baseline] = arg.toDouble();
      case TextBaseline arg:
        argsMap[#baselineType] = arg;
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
    if (argsMap[#baseline] == null) {
      throw FlutterError("Baselined requires `baseline:double` and `baselineType:TextBaseline");
    }
    return true;
  }());

  return Function.apply(Baseline.new, [], argsMap);
}

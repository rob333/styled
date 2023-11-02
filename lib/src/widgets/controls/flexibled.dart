import 'package:flutter/material.dart';

flexibled(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case int arg:
        argsMap[#flex] = arg;
      case FlexFit arg:
        argsMap[#fit] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#child] == null) {
      throw FlutterError("Flexibled without `child:Widget`");
    }
    return true;
  }());

  return Function.apply(Flexible.new, [], argsMap);
}

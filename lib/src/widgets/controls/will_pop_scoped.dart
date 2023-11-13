import 'package:flutter/material.dart';

willPopScoped(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case Future<bool> Function() arg:
        argsMap[#onWillPop] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#child] == null || argsMap[#onWillPop] == null) {
      throw FlutterError("WillPopScoped requires `child:Widget` and `onWillPop:Future<bool> Function()`");
    }
    return true;
  }());

  return Function.apply(WillPopScope.new, [], argsMap);
}

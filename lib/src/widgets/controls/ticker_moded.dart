import 'package:flutter/material.dart';

tickerModed(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case bool arg:
        argsMap[#enabled] = arg;
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
    if (argsMap[#child] == null || argsMap[#enabled] == null) {
      throw FlutterError(
          "TickerModed requires `child:Widget` and `enabled:bool`");
    }
    return true;
  }());

  return Function.apply(TickerMode.new, [], argsMap);
}

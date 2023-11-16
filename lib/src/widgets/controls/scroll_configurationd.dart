import 'package:flutter/material.dart';

scrollConfigurationd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case ScrollBehavior arg:
        argsMap[#behavior] = arg;
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
    if (argsMap[#child] == null || argsMap[#behavior] == null) {
      throw FlutterError(
          "ScrollConfigurationd requires `child:Widget` and `behavior:ScrollBehavior`");
    }
    return true;
  }());

  return Function.apply(ScrollConfiguration.new, [], argsMap);
}

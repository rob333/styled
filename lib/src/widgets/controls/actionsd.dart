import 'package:flutter/material.dart';

actionsd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Map<Type, Action<Intent>> arg:
        argsMap[#actions] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case ActionDispatcher arg:
        argsMap[#dispatcher] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#child] == null || argsMap[#actions] == null) {
      throw FlutterError("Actionsd requires `child:Widget` and `actions:Map<Type, Action<Intent>>`");
    }
    return true;
  }());

  return Function.apply(Actions.new, [], argsMap);
}

import 'package:flutter/material.dart';

visibilityd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int widgeti = 0;
  int booli = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        switch (widgeti++) {
          case 0:
            argsMap[#child] = arg;
          case 1:
            argsMap[#replacement] = arg;
        }
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#visible] = arg;
          case 1:
            argsMap[#maintainState] = arg;
          case 2:
            argsMap[#maintainAnimation] = arg;
          case 3:
            argsMap[#maintainSize] = arg;
          case 4:
            argsMap[#maintainSemantics] = arg;
          case 5:
            argsMap[#maintainInteractivity] = arg;
        }
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#child] == null) {
      throw FlutterError("Visibilityd requires `child:Widget`");
    }
    return true;
  }());

  return Function.apply(Visibility.new, [], argsMap);
}

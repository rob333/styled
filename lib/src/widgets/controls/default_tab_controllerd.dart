import 'package:flutter/material.dart';

defaultTabControllerd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int inti = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case int arg:
        switch (inti++) {
          case 0:
            argsMap[#length] = arg;
          case 1:
            argsMap[#initialIndex] = arg;
        }
      case Widget arg:
        argsMap[#child] = arg;
      case Duration arg:
        argsMap[#animationDuration] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#length] == null || argsMap[#child] == null) {
      throw FlutterError("DefaultTabControllerd requires `length:int` and `child:Widget`");
    }
    return true;
  }());

  return Function.apply(DefaultTabController.new, [], argsMap);
}

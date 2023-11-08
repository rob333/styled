import 'package:flutter/material.dart';

physicalModeld(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#color] = arg;
          case 1:
            argsMap[#shadowColor] = arg;
        }
      case BoxShape arg:
        argsMap[#shape] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;
      case BorderRadius arg:
        argsMap[#borderRadius] = arg;
      case double arg:
        argsMap[#elevation] = arg;
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
    if (argsMap[#color] == null) {
      throw FlutterError("PhysicalModeld requires `color:Color`");
    }
    return true;
  }());

  return Function.apply(PhysicalModel.new, [], argsMap);
}

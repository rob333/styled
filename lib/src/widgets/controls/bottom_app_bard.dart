import 'package:flutter/material.dart';

bottomAppBard(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  int doublei = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#elevation] = arg;
          case 1:
            argsMap[#height] = arg;
          case 2:
            argsMap[#notchMargin] = arg;
        }
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#elevation] = arg.toDouble();
          case 1:
            argsMap[#height] = arg.toDouble();
          case 2:
            argsMap[#notchMargin] = arg.toDouble();
        }
      case NotchedShape arg:
        argsMap[#shape] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;
      case EdgeInsetsGeometry arg:
        argsMap[#padding] = arg;
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#color] = arg;
          case 1:
            argsMap[#surfaceTintColor] = arg;
          case 2:
            argsMap[#shadowColor] = arg;
        }
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(BottomAppBar.new, [], argsMap);
}

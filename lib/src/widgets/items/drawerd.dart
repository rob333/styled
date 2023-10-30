import 'package:flutter/material.dart';

drawerd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  int doublei = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#width] = arg;
          case 1:
            argsMap[#elevation] = arg;
        }
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#backgroundColor] = arg;
          case 1:
            argsMap[#shadowColor] = arg;
          case 2:
            argsMap[#surfaceTintColor] = arg;
        }
      case ShapeBorder arg:
        argsMap[#shape] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case String arg:
        argsMap[#semanticLabel] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;
    }
  }

  // named args(origArgsMap) precede positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(Drawer.new, [], argsMap);
}

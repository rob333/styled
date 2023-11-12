import 'package:flutter/material.dart';

cardd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  int booli = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#color] = arg;
          case 1:
            argsMap[#shadowColor] = arg;
          case 2:
            argsMap[#surfaceTintColor] = arg;
        }
      case double arg:
        argsMap[#elevation] = arg;
      case int arg:
        argsMap[#elevation] = arg.toDouble();
      case ShapeBorder arg:
        argsMap[#shape] = arg;
      case EdgeInsetsGeometry arg:
        argsMap[#margin] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#borderOnForeground] = arg;
          case 1:
            argsMap[#semanticContainer] = arg;
        }
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(Card.new, [], argsMap);
}

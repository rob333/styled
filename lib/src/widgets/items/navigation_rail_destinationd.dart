import 'package:flutter/material.dart';

navigationRailDestinationd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int widgeti = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Widget arg:
        switch (widgeti++) {
          case 0:
            argsMap[#icon] = arg;
          case 1:
            argsMap[#label] = arg;
          case 2:
            argsMap[#selectedIcon] = arg;
        }
      case Color arg:
        argsMap[#indicatorColor] = arg;
      case ShapeBorder arg:
        argsMap[#indicatorShape] = arg;
      case EdgeInsetsGeometry arg:
        argsMap[#padding] = arg;
      case bool arg:
        argsMap[#disabled] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#icon] == null) {
      throw FlutterError("NavigationRailDestinationd requires `icon:Widget` and `label:Widget`");
    }
    return true;
  }());

  return Function.apply(NavigationRailDestination.new, [], argsMap);
}

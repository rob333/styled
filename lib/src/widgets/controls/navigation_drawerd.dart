import 'package:flutter/material.dart';

navigationDrawerd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  final List<Widget> widgets = [];

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case int arg:
        argsMap[#selectedIndex] = arg;
      case List<Widget> arg:
        // argsMap[#children] = arg;
        widgets.addAll(arg);
      case Widget arg:
        widgets.add(arg);
      case void Function(int) arg:
        argsMap[#onDestinationSelected] = arg;
      case double arg:
        argsMap[#elevation] = arg;
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#backgroundColor] = arg;
          case 1:
            argsMap[#shadowColor] = arg;
          case 2:
            argsMap[#surfaceTintColor] = arg;
          case 3:
            argsMap[#indicatorColor] = arg;
        }
      case ShapeBorder arg:
        argsMap[#indicatorShape] = arg;
      case EdgeInsetsGeometry arg:
        argsMap[#tilePadding] = arg;
    }
  }

  argsMap[#children] = widgets;

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(NavigationDrawer.new, [], argsMap);
}

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

  // named args(origArgsMap) precede positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);

    // merge widgets
    final list = argsMap[#children] as List<Widget>?;
    if (list != null) {
      widgets.addAll(list);
    }
  }

  argsMap[#children] = widgets;

  return Function.apply(NavigationDrawer.new, [], argsMap);
}

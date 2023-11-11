import 'package:flutter/material.dart';

navigationBard(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  int doublei = 0;
  final List<Widget> widgets = [];

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Duration arg:
        argsMap[#animationDuration] = arg;
      case int arg:
        argsMap[#selectedIndex] = arg;
      case List<Widget> arg:
        // argsMap[#destinations] = arg;
        widgets.addAll(arg);
      case Widget arg:
        widgets.add(arg);
      case void Function(int) arg:
        argsMap[#onDestinationSelected] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#elevation] = arg;
          case 1:
            argsMap[#height] = arg;
        }
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
      case NavigationDestinationLabelBehavior arg:
        argsMap[#labelBehavior] = arg;
    }
  }

  argsMap[#destinations] = widgets;

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(NavigationBar.new, [], argsMap);
}

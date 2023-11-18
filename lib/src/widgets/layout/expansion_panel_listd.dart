import 'package:flutter/material.dart';

expansionPanelListd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  int doublei = 0;
  final List<ExpansionPanel> panels = [];

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case List<ExpansionPanel> arg:
        // argsMap[#children] = arg;
        panels.addAll(arg);
      case ExpansionPanel arg:
        panels.add(arg);
      case void Function(int, bool) arg:
        argsMap[#expansionCallback] = arg;
      case Duration arg:
        argsMap[#animationDuration] = arg;
      case EdgeInsets arg:
        argsMap[#expandedHeaderPadding] = arg;
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#dividerColor] = arg;
          case 1:
            argsMap[#expandIconColor] = arg;
        }
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#elevation] = arg;
          case 1:
            argsMap[#materialGapSize] = arg;
        }
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#elevation] = arg.toDouble();
          case 1:
            argsMap[#materialGapSize] = arg.toDouble();
        }
    }
  }

  // named args(origArgsMap) precede positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);

    // merge panels
    final list = argsMap[#children] as List<ExpansionPanel>?;
    if (list != null) {
      panels.addAll(list);
    }
  }

  argsMap[#children] = panels;

  return Function.apply(ExpansionPanelList.new, [], argsMap);
}

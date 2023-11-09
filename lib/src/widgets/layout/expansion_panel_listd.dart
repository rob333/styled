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
    }
  }

  argsMap[#children] = panels;

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(ExpansionPanelList.new, [], argsMap);
}

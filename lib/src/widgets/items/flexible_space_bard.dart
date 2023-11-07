import 'package:flutter/material.dart';

flexibleSpaceBard(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int widgeti = 0;
  final List<StretchMode> stretchModes = [];

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        switch (widgeti++) {
          case 0:
            argsMap[#title] = arg;
          case 1:
            argsMap[#background] = arg;
        }
      case bool arg:
        argsMap[#centerTitle] = arg;
      case EdgeInsetsGeometry arg:
        argsMap[#titlePadding] = arg;
      case CollapseMode arg:
        argsMap[#collapseMode] = arg;
      case List<StretchMode> arg:
        // argsMap[#stretchModes] = arg;
        stretchModes.addAll(arg);
      case StretchMode arg:
        stretchModes.add(arg);
      case double arg:
        argsMap[#expandedTitleScale] = arg;
      case int arg:
        argsMap[#expandedTitleScale] = arg.toDouble();
    }
  }

  argsMap[#stretchModes] = stretchModes;

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(FlexibleSpaceBar.new, [], argsMap);
}

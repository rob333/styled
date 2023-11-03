import 'package:flutter/material.dart';

indexedStackd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  final List<Widget> widgets = [];

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case List<Widget> arg:
        // argsMap[#children] = arg;
        widgets.addAll(arg);
      case Widget arg:
        widgets.add(arg);
      case AlignmentGeometry arg:
        argsMap[#alignment] = arg;
      case TextDirection arg:
        argsMap[#textDirection] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;
      case StackFit arg:
        argsMap[#sizing] = arg;
      case int arg:
        argsMap[#index] = arg;
    }
  }

  argsMap[#children] = widgets;

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(IndexedStack.new, [], argsMap);
}

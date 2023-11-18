import 'package:flutter/material.dart';

stackd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  final List<Widget> widgets = [];

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case AlignmentGeometry arg:
        argsMap[#alignment] = arg;
      case TextDirection arg:
        argsMap[#textDirection] = arg;
      case StackFit arg:
        argsMap[#fit] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;
      case List<Widget> arg:
        // argsMap[#children] = arg;
        widgets.addAll(arg);
      case Widget arg:
        widgets.add(arg);
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);

    // merge widgets
    final list = argsMap[#children] as List<Widget>?;
    if (list != null) {
      widgets.addAll(list);
    }
  }

  argsMap[#children] = widgets;

  return Function.apply(Stack.new, [], argsMap);
}

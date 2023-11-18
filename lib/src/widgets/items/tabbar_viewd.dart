import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

tabBarViewd(List argsList, Map<Symbol, dynamic> origArgsMap) {
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
      case TabController arg:
        argsMap[#controller] = arg;
      case ScrollPhysics arg:
        argsMap[#physics] = arg;
      case DragStartBehavior arg:
        argsMap[#dragStartBehavior] = arg;
      case double arg:
        argsMap[#viewportFraction] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;
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

  return Function.apply(TabBarView.new, [], argsMap);
}

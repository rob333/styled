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

  argsMap[#children] = widgets;

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(TabBarView.new, [], argsMap);
}

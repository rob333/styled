import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

pageViewd(List argsList, Map<Symbol, dynamic> origArgsMap) {
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
      case Axis arg:
        argsMap[#scrollDirection] = arg;
      case PageController arg:
        argsMap[#controller] = arg;
      case ScrollPhysics arg:
        argsMap[#physics] = arg;
      case void Function(int) arg:
        argsMap[#onPageChanged] = arg;
      case DragStartBehavior arg:
        argsMap[#dragStartBehavior] = arg;
      case String arg:
        argsMap[#restorationId] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;
      case ScrollBehavior arg:
        argsMap[#scrollBehavior] = arg;
      case bool arg:
        argsMap[#reverse] = arg;
      // case bool arg:
      //   argsMap[#pageSnapping] = arg;
      // case bool arg:
      //   argsMap[#allowImplicitScrolling] = arg;
      // case bool arg:
      //   argsMap[#padEnds] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(PageView.new, [], argsMap);
}

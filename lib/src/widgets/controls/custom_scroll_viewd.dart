import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

customScrollViewd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int booli = 0;
  int keyi = 0;
  int doublei = 0;
  final List<Widget> widgets = [];

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        switch (keyi++) {
          case 0:
            argsMap[#key] = arg;
          case 1:
            argsMap[#center] = arg;
        }
      case Axis arg:
        argsMap[#scrollDirection] = arg;
      case ScrollController arg:
        argsMap[#controller] = arg;
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#reverse] = arg;
          case 1:
            argsMap[#primary] = arg;
          case 2:
            argsMap[#shrinkWrap] = arg;
        }
      case ScrollPhysics arg:
        argsMap[#physics] = arg;
      case ScrollBehavior arg:
        argsMap[#scrollBehavior] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#anchor] = arg;
          case 1:
            argsMap[#cacheExtent] = arg;
        }
      case List<Widget> arg:
        // argsMap[#slivers] = arg;
        widgets.addAll(arg);
      case Widget arg:
        widgets.add(arg);
      case int arg:
        argsMap[#semanticChildCount] = arg;
      case DragStartBehavior arg:
        argsMap[#dragStartBehavior] = arg;
      case ScrollViewKeyboardDismissBehavior arg:
        argsMap[#keyboardDismissBehavior] = arg;
      case String arg:
        argsMap[#restorationId] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;
    }
  }

  // named args(origArgsMap) precede positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);

    // merge widgets
    final list = argsMap[#slivers] as List<Widget>?;
    if (list != null) {
      widgets.addAll(list);
    }
  }

  argsMap[#slivers] = widgets;

  return Function.apply(CustomScrollView.new, [], argsMap);
}

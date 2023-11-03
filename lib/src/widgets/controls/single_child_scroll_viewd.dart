import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

singleChildScrollViewd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int booli = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#reverse] = arg;
          case 1:
            argsMap[#primary] = arg;
        }
      case Axis arg:
        argsMap[#scrollDirection] = arg;
      case EdgeInsetsGeometry arg:
        argsMap[#padding] = arg;
      case ScrollPhysics arg:
        argsMap[#physics] = arg;
      case ScrollController arg:
        argsMap[#controller] = arg;
      case DragStartBehavior arg:
        argsMap[#dragStartBehavior] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;
      case String arg:
        argsMap[#restorationId] = arg;
      case ScrollViewKeyboardDismissBehavior arg:
        argsMap[#keyboardDismissBehavior] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(SingleChildScrollView.new, [], argsMap);
}

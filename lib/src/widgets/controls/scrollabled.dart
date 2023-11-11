import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/gestures.dart';

scrollabled(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case AxisDirection arg:
        argsMap[#axisDirection] = arg;
      case ScrollController arg:
        argsMap[#controller] = arg;
      case ScrollPhysics arg:
        argsMap[#physics] = arg;
      case Widget Function(BuildContext, ViewportOffset) arg:
        argsMap[#viewportBuilder] = arg;
      case double Function(ScrollIncrementDetails) arg:
        argsMap[#incrementCalculator] = arg;
      case bool arg:
        argsMap[#excludeFromSemantics] = arg;
      case int arg:
        argsMap[#semanticChildCount] = arg;
      case DragStartBehavior arg:
        argsMap[#dragStartBehavior] = arg;
      case String arg:
        argsMap[#restorationId] = arg;
      case ScrollBehavior arg:
        argsMap[#scrollBehavior] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#viewportBuilder] == null) {
      throw FlutterError("Scrollabled requires `viewportBuilder:Widget Function(BuildContext, ViewportOffset)`");
    }
    return true;
  }());

  return Function.apply(Scrollable.new, [], argsMap);
}

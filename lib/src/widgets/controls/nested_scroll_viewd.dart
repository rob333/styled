import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

nestedScrollViewd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int booli = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#body] = arg;
      case List<Widget> Function(BuildContext, bool) arg:
        argsMap[#headerSliverBuilder] = arg;
      case ScrollController arg:
        argsMap[#controller] = arg;
      case Axis arg:
        argsMap[#scrollDirection] = arg;
      case ScrollPhysics arg:
        argsMap[#physics] = arg;
      case DragStartBehavior arg:
        argsMap[#dragStartBehavior] = arg;
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#reverse] = arg;
          case 1:
            argsMap[#floatHeaderSlivers] = arg;
        }
      case Clip arg:
        argsMap[#clipBehavior] = arg;
      case String arg:
        argsMap[#restorationId] = arg;
      case ScrollBehavior arg:
        argsMap[#scrollBehavior] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#body] == null || argsMap[#headerSliverBuilder] == null) {
      throw FlutterError(
          "NestedScrollViewd requires `body:Widget` and `headerSliverBuilder:List<Widget> Function(BuildContext, bool)`");
    }
    return true;
  }());

  return Function.apply(NestedScrollView.new, [], argsMap);
}

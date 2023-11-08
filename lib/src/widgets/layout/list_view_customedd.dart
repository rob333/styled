import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

listViewCustomd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int doublei = 0;
  int booli = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case SliverChildDelegate arg:
        argsMap[#childrenDelegate] = arg;
      case Axis arg:
        argsMap[#scrollDirection] = arg;
      case ScrollController arg:
        argsMap[#controller] = arg;
      case ScrollPhysics arg:
        argsMap[#physics] = arg;
      case EdgeInsetsGeometry arg:
        argsMap[#padding] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#itemExtent] = arg;
          case 1:
            argsMap[#cacheExtent] = arg;
        }
      case Widget arg:
        argsMap[#prototypeItem] = arg;
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
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#reverse] = arg;
          case 1:
            argsMap[#primary] = arg;
          case 2:
            argsMap[#shrinkWrap] = arg;
        }
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

//* required:
  assert(() {
    if (argsMap[#childrenDelegate] == null) {
      throw FlutterError("ListViewCustomd requires `childrenDelegate:SliverChildDelegate`");
    }
    return true;
  }());

  return Function.apply(ListView.custom, [], argsMap);
}

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

gridViewd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  final List<Widget> widgets = [];

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Axis arg:
        argsMap[#scrollDirection] = arg;
      case ScrollController arg:
        argsMap[#controller] = arg;
      case ScrollPhysics arg:
        argsMap[#physics] = arg;
      case EdgeInsetsGeometry arg:
        argsMap[#padding] = arg;
      case SliverGridDelegate arg:
        argsMap[#gridDelegate] = arg;
      case double arg:
        argsMap[#cacheExtent] = arg;
      case List<Widget> arg:
        // argsMap[#children] = arg;
        widgets.addAll(arg);
      case Widget arg:
        widgets.add(arg);
      case int arg:
        argsMap[#semanticChildCount] = arg;
      case DragStartBehavior arg:
        argsMap[#dragStartBehavior] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;
      case ScrollViewKeyboardDismissBehavior arg:
        argsMap[#keyboardDismissBehavior] = arg;
      case String arg:
        argsMap[#restorationId] = arg;
      // case bool arg:
      //   argsMap[#reverse] = arg;
      // case bool arg:
      //   argsMap[#primary] = arg;
      // case bool arg:
      //   argsMap[#shrinkWrap] = arg;
      // case bool arg:
      //   argsMap[#addAutomaticKeepAlives] = arg;
      // case bool arg:
      //   argsMap[#addRepaintBoundaries] = arg;
      // case bool arg:
      //   argsMap[#addSemanticIndexes] = arg;
    }
  }

  argsMap[#children] = widgets;

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#gridDelegate] == null) {
      throw FlutterError("GridViewd requires `gridDelegate:SliverGridDelegate`");
    }
    return true;
  }());

  return Function.apply(GridView.new, [], argsMap);
}

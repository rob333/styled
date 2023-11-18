import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

gridViewExtentd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int booli = 0;
  int doublei = 0;
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
      case ScrollController arg:
        argsMap[#controller] = arg;
      case ScrollPhysics arg:
        argsMap[#physics] = arg;
      case EdgeInsetsGeometry arg:
        argsMap[#padding] = arg;
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
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#maxCrossAxisExtent] = arg;
          case 1:
            argsMap[#mainAxisSpacing] = arg;
          case 2:
            argsMap[#crossAxisSpacing] = arg;
          case 3:
            argsMap[#childAspectRatio] = arg;
          case 4:
            argsMap[#cacheExtent] = arg;
        }
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#reverse] = arg;
          case 1:
            argsMap[#primary] = arg;
          case 2:
            argsMap[#shrinkWrap] = arg;
          case 3:
            argsMap[#addAutomaticKeepAlives] = arg;
          case 4:
            argsMap[#addRepaintBoundaries] = arg;
          case 5:
            argsMap[#addSemanticIndexes] = arg;
        }
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

  //* required:
  assert(() {
    if (argsMap[#maxCrossAxisExtent] == null) {
      throw FlutterError(
          "GridViewExtentd requires `maxCrossAxisExtent:double`");
    }
    return true;
  }());

  return Function.apply(GridView.extent, [], argsMap);
}

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

listViewSeparatedd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int booli = 0;
  int functioni = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget? Function(BuildContext, int) arg:
        switch (functioni++) {
          case 0:
            argsMap[#itemBuilder] = arg;
          case 1:
            argsMap[#separatorBuilder] = arg;
        }
      case int arg:
        argsMap[#itemCount] = arg;
      case Axis arg:
        argsMap[#scrollDirection] = arg;
      case ScrollController arg:
        argsMap[#controller] = arg;
      case ScrollPhysics arg:
        argsMap[#physics] = arg;
      case EdgeInsetsGeometry arg:
        argsMap[#padding] = arg;
      case int? Function(Key) arg:
        argsMap[#findChildIndexCallback] = arg;
      case double arg:
        argsMap[#cacheExtent] = arg;
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
          case 3:
            argsMap[#addAutomaticKeepAlives] = arg;
          case 4:
            argsMap[#addRepaintBoundaries] = arg;
          case 5:
            argsMap[#addSemanticIndexes] = arg;
        }
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#itemCount] == null || argsMap[#itemBuilder] == null || argsMap[#separatorBuilder] == null) {
      throw FlutterError("ListViewSeparatedd requires `itemCount:int`, `itemBuilder:Widget? Function(BuildContext, int)` and `separatorBuilder:Widget Function(BuildContext, int)`");
    }
    return true;
  }());

  return Function.apply(ListView.separated, [], argsMap);
}

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

gridViewBuilderd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int inti = 0;
  int booli = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget? Function(BuildContext, int) arg:
        argsMap[#itemBuilder] = arg;
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
      case int? Function(Key) arg:
        argsMap[#findChildIndexCallback] = arg;
      case int arg:
        switch (inti++) {
          case 0:
            argsMap[#itemCount] = arg;
          case 1:
            argsMap[#semanticChildCount] = arg;
        }
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
    if (argsMap[#gridDelegate] == null || argsMap[#itemBuilder] == null) {
      throw FlutterError("GridViewBuilderd requires `gridDelegate:SliverGridDelegate` and  `itemBuilder:Widget? Function(BuildContext, int)`");
    }
    return true;
  }());

  return Function.apply(GridView.builder, [], argsMap);
}

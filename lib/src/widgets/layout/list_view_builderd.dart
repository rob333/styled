import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

listViewBuilderd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int inti = 0;
  int booli = 0;
  int doublei = 0;

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
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#itemExtent] = arg;
          case 1:
            argsMap[#cacheExtent] = arg;
        }
      case Widget arg:
        argsMap[#prototypeItem] = arg;
      case int? Function(Key) arg:
        argsMap[#findChildIndexCallback] = arg;
      case int arg:
        switch (inti++) {
          case 0:
            argsMap[#itemCount] = arg;
          case 1:
            argsMap[#semanticChildCount] = arg;
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

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#itemBuilder] == null) {
      throw FlutterError("ListViewBuilderdd requires `itemBuilder:itemBuilder:Widget? Function(BuildContext, int)`");
    }
    return true;
  }());

  return Function.apply(ListView.builder, [], argsMap);
}

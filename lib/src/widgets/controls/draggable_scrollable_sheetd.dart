import 'package:flutter/material.dart';

draggableScrollableSheetd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int booli = 0;
  int doublei = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget Function(BuildContext, ScrollController) arg:
        argsMap[#builder] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#initialChildSize] = arg;
          case 1:
            argsMap[#minChildSize] = arg;
          case 2:
            argsMap[#maxChildSize] = arg;
        }
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#expand] = arg;
          case 1:
            argsMap[#snap] = arg;
          case 2:
            argsMap[#shouldCloseOnMinExtent] = arg;
        }
      case List<double> arg:
        argsMap[#snapSizes] = arg;
      case Duration arg:
        argsMap[#snapAnimationDuration] = arg;
      case DraggableScrollableController arg:
        argsMap[#controller] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#builder] == null) {
      throw FlutterError("AnimatedCrossFadedd requires `builder:Widget Function(BuildContext, ScrollController)`");
    }
    return true;
  }());

  return Function.apply(DraggableScrollableSheet.new, [], argsMap);
}

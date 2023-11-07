import 'package:flutter/material.dart';

interactiveViewerd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int booli = 0;
  int doublei = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#alignPanAxis] = arg;
          case 1:
            argsMap[#constrained] = arg;
          case 2:
            argsMap[#panEnabled] = arg;
          case 3:
            argsMap[#scaleEnabled] = arg;
          case 4:
            argsMap[#trackpadScrollCausesScale] = arg;
        }
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#maxScale] = arg;
          case 1:
            argsMap[#minScale] = arg;
          case 2:
            argsMap[#interactionEndFrictionCoefficient] = arg;
          case 3:
            argsMap[#scaleFactor] = arg;
        }
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#maxScale] = arg.toDouble();
          case 1:
            argsMap[#minScale] = arg.toDouble();
          case 2:
            argsMap[#interactionEndFrictionCoefficient] = arg.toDouble();
          case 3:
            argsMap[#scaleFactor] = arg.toDouble();
        }
      case PanAxis arg:
        argsMap[#panAxis] = arg;
      case EdgeInsets arg:
        argsMap[#boundaryMargin] = arg;
      case TransformationController arg:
        argsMap[#transformationController] = arg;
      case Alignment arg:
        argsMap[#alignment] = arg;
      case void Function(ScaleEndDetails) arg:
        argsMap[#onInteractionEnd] = arg;
      case void Function(ScaleStartDetails) arg:
        argsMap[#onInteractionStart] = arg;
      case void Function(ScaleUpdateDetails) arg:
        argsMap[#onInteractionUpdate] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#child] == null) {
      throw FlutterError("InteractiveViewerd requires `child:Widget`");
    }
    return true;
  }());

  return Function.apply(InteractiveViewer.new, [], argsMap);
}

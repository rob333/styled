import 'package:flutter/material.dart';

draggabled(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int widgeti = 0;
  int booli = 0;
  int axisi = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        switch (widgeti++) {
          case 0:
            argsMap[#child] = arg;
          case 1:
            argsMap[#feedback] = arg;
          case 2:
            argsMap[#childWhenDragging] = arg;
        }
      case Axis arg:
        switch (axisi++) {
          case 0:
            argsMap[#axis] = arg;
          case 1:
            argsMap[#affinity] = arg;
        }
      case Offset arg:
        argsMap[#feedbackOffset] = arg;
      case int arg:
        argsMap[#maxSimultaneousDrags] = arg;
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#ignoringFeedbackSemantics] = arg;
          case 1:
            argsMap[#ignoringFeedbackPointer] = arg;
          case 2:
            argsMap[#rootOverlay] = arg;
        }
      case HitTestBehavior arg:
        argsMap[#hitTestBehavior] = arg;
      case Object arg:
        argsMap[#data] = arg;
      // Offset Function(Draggable<Object>, BuildContext, Offset) dragAnchorStrategy = childDragAnchorStrategy,
      // void Function()? onDragStarted,
      // void Function(DragUpdateDetails)? onDragUpdate,
      // void Function(Velocity, Offset)? onDraggableCanceled,
      // void Function(DraggableDetails)? onDragEnd,
      // void Function()? onDragCompleted,
      // bool Function(int)? allowedButtonsFilter,
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#child] == null || argsMap[#feedback] == null) {
      throw FlutterError(
          "Draggabled requires `child:Widget` and `feedback:Widget");
    }
    return true;
  }());

  return Function.apply(Draggable.new, [], argsMap);
}

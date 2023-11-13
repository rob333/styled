import 'package:flutter/material.dart';

bottomSheetd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  int booli = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case void Function() arg:
        argsMap[#onClosing] = arg;
      case Widget Function(BuildContext) arg:
        argsMap[#builder] = arg;
      case AnimationController arg:
        argsMap[#animationController] = arg;
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#enableDrag] = arg;
          case 1:
            argsMap[#showDragHandle] = arg;
        }
      case Size arg:
        argsMap[#dragHandleSize] = arg;
      case void Function(DragStartDetails) arg:
        argsMap[#onDragStart] = arg;
      case void Function(DragEndDetails, {required bool isClosing}) arg:
        argsMap[#onDragEnd] = arg;
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#dragHandleColor] = arg;
          case 1:
            argsMap[#backgroundColor] = arg;
          case 2:
            argsMap[#shadowColor] = arg;
        }
      case double arg:
        argsMap[#elevation] = arg;
      case int arg:
        argsMap[#elevation] = arg.toDouble();
      case ShapeBorder arg:
        argsMap[#shape] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;
      case BoxConstraints arg:
        argsMap[#constraints] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#builder] == null || argsMap[#onClosing] == null) {
      throw FlutterError("BottomSheetd requires `builder:Widget Function(BuildContext)` and `onClosing:void Function()`");
    }
    return true;
  }());

  return Function.apply(BottomSheet.new, [], argsMap);
}

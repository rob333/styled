import 'package:flutter/material.dart';

textButtonIcond(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int widgeti = 0;
  int functioni = 0;
  int functionbooli = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        switch (widgeti++) {
          case 0:
            argsMap[#icon] = arg;
          case 1:
            argsMap[#label] = arg;
        }
      case void Function() arg:
        switch (functioni++) {
          case 0:
            argsMap[#onPressed] = arg;
          case 1:
            argsMap[#onLongPress] = arg;
        }
      case void Function(bool) arg:
        switch (functionbooli++) {
          case 0:
            argsMap[#onHover] = arg;
          case 1:
            argsMap[#onFocusChange] = arg;
        }
      case ButtonStyle arg:
        argsMap[#style] = arg;
      case FocusNode arg:
        argsMap[#focusNode] = arg;
      case bool arg:
        argsMap[#autofocus] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;
      case MaterialStatesController arg:
        argsMap[#statesController] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#child] == null) {
      throw FlutterError("TextButtonIcond requires `icon:Widget`, `label:Widget` and `onPressed:void Function()`");
    }
    return true;
  }());

  return Function.apply(TextButton.icon, [], argsMap);
}

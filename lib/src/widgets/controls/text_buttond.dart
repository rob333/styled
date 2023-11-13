import 'package:flutter/material.dart';

textButtond(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int booli = 0;
  int functioni = 0;
  int functionbooli = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
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
        switch (booli++) {
          case 0:
            argsMap[#autofocus] = arg;
          case 1:
            argsMap[#isSemanticButton] = arg;
        }
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
    if (argsMap[#child] == null || argsMap[#onPressed] == null) {
      throw FlutterError("OutlinedButtond requires `child:Widget` and `onPressed:void Function()`");
    }
    return true;
  }());

  return Function.apply(TextButton.new, [], argsMap);
}

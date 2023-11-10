import 'package:flutter/material.dart';

focusd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int booli = 0;
  int focusnodei = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case FocusNode arg:
        switch (focusnodei++) {
          case 0:
            argsMap[#focusNode] = arg;
          case 1:
            argsMap[#parentNode] = arg;
        }
      case void Function(bool) arg:
        argsMap[#onFocusChange] = arg;
      case KeyEventResult Function(FocusNode, KeyEvent) arg:
        argsMap[#onKeyEvent] = arg;
      case KeyEventResult Function(FocusNode, RawKeyEvent) arg:
        argsMap[#onKey] = arg;
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#autofocus] = arg;
          case 1:
            argsMap[#canRequestFocus] = arg;
          case 2:
            argsMap[#skipTraversal] = arg;
          case 3:
            argsMap[#descendantsAreFocusable] = arg;
          case 4:
            argsMap[#descendantsAreTraversable] = arg;
          case 5:
            argsMap[#includeSemantics] = arg;
        }
      case String arg:
        argsMap[#debugLabel] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#child] == null) {
      throw FlutterError("Focusd requires `child:Widget`");
    }
    return true;
  }());

  return Function.apply(Focus.new, [], argsMap);
}

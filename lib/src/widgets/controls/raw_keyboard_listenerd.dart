import 'package:flutter/material.dart';

rawKeyboardListenerd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int booli = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case FocusNode arg:
        argsMap[#focusNode] = arg;
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#autofocus] = arg;
          case 1:
            argsMap[#includeSemantics] = arg;
        }
      case void Function(RawKeyEvent) arg:
        argsMap[#onKey] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#child] == null) {
      throw FlutterError("RawKeyboardListenerd requires `child:Widget` and `focusNode:FocusNode`");
    }
    return true;
  }());

  return Function.apply(RawKeyboardListener.new, [], argsMap);
}

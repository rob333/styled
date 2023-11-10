import 'package:flutter/material.dart';

focusableActionDetectord(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int booli = 0;
  int functionbooli = 0;

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
            argsMap[#enabled] = arg;
          case 1:
            argsMap[#autofocus] = arg;
          case 2:
            argsMap[#descendantsAreFocusable] = arg;
          case 3:
            argsMap[#descendantsAreTraversable] = arg;
          case 4:
            argsMap[#includeFocusSemantics] = arg;
        }
      case Map<ShortcutActivator, Intent> arg:
        argsMap[#shortcuts] = arg;
      case Map<Type, Action<Intent>> arg:
        argsMap[#actions] = arg;
      case void Function(bool) arg:
        switch (functionbooli++) {
          case 0:
            argsMap[#onShowFocusHighlight] = arg;
          case 1:
            argsMap[#onShowHoverHighlight] = arg;
          case 2:
            argsMap[#onFocusChange] = arg;
        }
      case MouseCursor arg:
        argsMap[#mouseCursor] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#child] == null) {
      throw FlutterError("FocusableActionDetectord requires `child:Widget`");
    }
    return true;
  }());

  return Function.apply(FocusableActionDetector.new, [], argsMap);
}

import 'package:flutter/material.dart';

floatingactionbuttond(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  int doublei = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case String arg:
        argsMap[#tooltip] = arg;
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#foregroundColor] = arg;
          case 1:
            argsMap[#backgroundColor] = arg;
          case 2:
            argsMap[#focusColor] = arg;
          case 3:
            argsMap[#hoverColor] = arg;
          case 4:
            argsMap[#splashColor] = arg;
        }
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#elevation] = arg;
          case 1:
            argsMap[#focusElevation] = arg;
          case 2:
            argsMap[#hoverElevation] = arg;
          case 3:
            argsMap[#highlightElevation] = arg;
          case 4:
            argsMap[#disabledElevation] = arg;
        }
      case void Function() arg:
        argsMap[#onPressed] = arg;
      case MouseCursor arg:
        argsMap[#mouseCursor] = arg;
      case ShapeBorder arg:
        argsMap[#shape] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;
      case FocusNode arg:
        argsMap[#focusNode] = arg;
      case MaterialTapTargetSize arg:
        argsMap[#materialTapTargetSize] = arg;
      case bool arg:
        argsMap[#autofocus] = arg;
      // case bool arg:
      //   argsMap[#mini] = arg;
      // case bool arg:
      //   argsMap[#isExtended] = arg;
      // case bool arg:
      //   argsMap[#enableFeedback] = arg;
      case Object arg:
        argsMap[#heroTag] = arg;
    }
  }

  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(FloatingActionButton.new, [], argsMap);
}

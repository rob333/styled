import 'package:flutter/material.dart';

rawMaterialButtond(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int functioni = 0;
  int colori = 0;
  int doublei = 0;
  int booli = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case void Function() arg:
        switch (functioni++) {
          case 0:
            argsMap[#onPressed] = arg;
          case 1:
            argsMap[#onLongPress] = arg;
        }
      case void Function(bool) arg:
        argsMap[#onHighlightChanged] = arg;
      case MouseCursor arg:
        argsMap[#mouseCursor] = arg;
      case TextStyle arg:
        argsMap[#textStyle] = arg;
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#fillColor] = arg;
          case 1:
            argsMap[#focusColor] = arg;
          case 2:
            argsMap[#hoverColor] = arg;
          case 3:
            argsMap[#highlightColor] = arg;
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
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#elevation] = arg.toDouble();
          case 1:
            argsMap[#focusElevation] = arg.toDouble();
          case 2:
            argsMap[#hoverElevation] = arg.toDouble();
          case 3:
            argsMap[#highlightElevation] = arg.toDouble();
          case 4:
            argsMap[#disabledElevation] = arg.toDouble();
        }
      case EdgeInsetsGeometry arg:
        argsMap[#padding] = arg;
      case VisualDensity arg:
        argsMap[#visualDensity] = arg;
      case BoxConstraints arg:
        argsMap[#constraints] = arg;
      case ShapeBorder arg:
        argsMap[#shape] = arg;
      case Duration arg:
        argsMap[#animationDuration] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;
      case FocusNode arg:
        argsMap[#focusNode] = arg;
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#autofocus] = arg;
          case 1:
            argsMap[#enableFeedback] = arg;
        }
      case MaterialTapTargetSize arg:
        argsMap[#materialTapTargetSize] = arg;
      case Widget arg:
        argsMap[#child] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#onPressed] == null) {
      throw FlutterError("RawMaterialButtond requires `onPressed:void Function()`");
    }
    return true;
  }());

  return Function.apply(RawMaterialButton.new, [], argsMap);
}

import 'package:flutter/material.dart';

floatingActionButtonExtendedd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  int doublei = 0;
  int booli = 0;
  int widgeti = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case String arg:
        argsMap[#tooltip] = arg;
      case Widget arg:
        switch (widgeti++) {
          case 0:
            argsMap[#label] = arg;
          case 1:
            argsMap[#icon] = arg;
        }
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
          case 5:
            argsMap[#extendedIconLabelSpacing] = arg;
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
          case 5:
            argsMap[#extendedIconLabelSpacing] = arg.toDouble();
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
        switch (booli++) {
          case 0:
            argsMap[#autofocus] = arg;
          case 1:
            argsMap[#isExtended] = arg;
          case 2:
            argsMap[#enableFeedback] = arg;
        }
      case EdgeInsetsGeometry arg:
        argsMap[#extendedPadding] = arg;
      case TextStyle arg:
        argsMap[#extendedTextStyle] = arg;
      case Object arg:
        argsMap[#heroTag] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#onPressed] == null) {
      throw FlutterError("FloatingActionButtonExtendedd requires `onPressed:void Function()` and `label:Widget`");
    }
    return true;
  }());

  return Function.apply(FloatingActionButton.extended, [], argsMap);
}

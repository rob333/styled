import 'package:flutter/material.dart';

iconButtond(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  int doublei = 0;
  int widgeti = 0;
  int booli = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        switch (widgeti++) {
          case 0:
            argsMap[#icon] = arg;
          case 1:
            argsMap[#selectedIcon] = arg;
        }
      case void Function() arg:
        argsMap[#onPressed] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#iconSize] = arg;
          case 1:
            argsMap[#splashRadius] = arg;
        }
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#iconSize] = arg.toDouble();
          case 1:
            argsMap[#splashRadius] = arg.toDouble();
        }

      case VisualDensity arg:
        argsMap[#visualDensity] = arg;
      case EdgeInsetsGeometry arg:
        argsMap[#padding] = arg;
      case AlignmentGeometry arg:
        argsMap[#alignment] = arg;
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#color] = arg;
          case 1:
            argsMap[#focusColor] = arg;
          case 2:
            argsMap[#hoverColor] = arg;
          case 3:
            argsMap[#highlightColor] = arg;
          case 4:
            argsMap[#splashColor] = arg;
          case 5:
            argsMap[#disabledColor] = arg;
        }
      case MouseCursor arg:
        argsMap[#mouseCursor] = arg;
      case FocusNode arg:
        argsMap[#focusNode] = arg;
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#isSelected] = arg;
          case 1:
            argsMap[#autofocus] = arg;
          case 2:
            argsMap[#enableFeedback] = arg;
        }
      case String arg:
        argsMap[#tooltip] = arg;
      case BoxConstraints arg:
        argsMap[#constraints] = arg;
      case ButtonStyle arg:
        argsMap[#style] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#icon] == null && argsMap[#onPressed] == null) {
      throw FlutterError(
          "IconButton without `icon:Widget` and `onPressed:void Function()?`");
    } else if (argsMap[#icon] == null) {
      throw FlutterError("IconButton without `icon:Widget`");
    } else if (argsMap[#onPressed] == null) {
      throw FlutterError("IconButton without `onPressed:void Function()?`");
    }
    return true;
  }());

  return Function.apply(IconButton.new, [], argsMap);
}

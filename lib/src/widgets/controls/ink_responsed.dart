import 'package:flutter/material.dart';

inkResponsed(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  int booli = 0;
  int functioni = 0;
  int functionbooli = 0;
  int functiontapupi = 0;
  int functiontapdowni = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case void Function() arg:
        switch (functioni++) {
          case 0:
            argsMap[#onTap] = arg;
          case 1:
            argsMap[#onDoubleTap] = arg;
          case 2:
            argsMap[#onLongPress] = arg;
          case 3:
            argsMap[#onSecondaryTap] = arg;
          case 4:
            argsMap[#onTapCancel] = arg;
          case 5:
            argsMap[#onSecondaryTapCancel] = arg;
        }
      case void Function(TapUpDetails) arg:
        switch (functiontapupi++) {
          case 0:
            argsMap[#onTapUp] = arg;
          case 1:
            argsMap[#onSecondaryTapUp] = arg;
        }
      case void Function(TapDownDetails) arg:
        switch (functiontapdowni++) {
          case 0:
            argsMap[#onTapDown] = arg;
          case 1:
            argsMap[#onSecondaryTapDown] = arg;
        }
      case void Function(bool) arg:
        switch (functionbooli++) {
          case 0:
            argsMap[#onHover] = arg;
          case 1:
            argsMap[#onHighlightChanged] = arg;
          case 2:
            argsMap[#onFocusChange] = arg;
        }
      case MouseCursor arg:
        argsMap[#mouseCursor] = arg;
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#containedInkWell] = arg;
          case 1:
            argsMap[#enableFeedback] = arg;
          case 2:
            argsMap[#excludeFromSemantics] = arg;
          case 3:
            argsMap[#canRequestFocus] = arg;
          case 4:
            argsMap[#autofocus] = arg;
        }
      case BoxShape arg:
        argsMap[#highlightShape] = arg;
      case double arg:
        argsMap[#radius] = arg;
      case int arg:
        argsMap[#radius] = arg.toDouble();
      case BorderRadius arg:
        argsMap[#borderRadius] = arg;
      case ShapeBorder arg:
        argsMap[#customBorder] = arg;
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#focusColor] = arg;
          case 1:
            argsMap[#hoverColor] = arg;
          case 2:
            argsMap[#highlightColor] = arg;
          case 3:
            argsMap[#splashColor] = arg;
        }
      case MaterialStateProperty<Color?> arg:
        argsMap[#overlayColor] = arg;
      case FocusNode arg:
        argsMap[#focusNode] = arg;
      case InteractiveInkFeatureFactory arg:
        argsMap[#splashFactory] = arg;
      case MaterialStatesController arg:
        argsMap[#statesController] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(InkResponse.new, [], argsMap);
}

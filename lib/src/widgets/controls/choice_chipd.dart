import 'package:flutter/material.dart';

choiceChipd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  int doublei = 0;
  int widgeti = 0;
  int booli = 0;
  int edgeinseti = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        switch (widgeti++) {
          case 0:
            argsMap[#label] = arg;
          case 1:
            argsMap[#avatar] = arg;
        }
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#elevation] = arg;
          case 1:
            argsMap[#pressElevation] = arg;
        }
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#elevation] = arg.toDouble();
          case 1:
            argsMap[#pressElevation] = arg.toDouble();
        }
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#selected] = arg;
          case 1:
            argsMap[#autofocus] = arg;
          case 2:
            argsMap[#showCheckmark] = arg;
        }
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#backgroundColor] = arg;
          case 1:
            argsMap[#surfaceTintColor] = arg;
          case 2:
            argsMap[#shadowColor] = arg;
          case 3:
            argsMap[#selectedColor] = arg;
          case 4:
            argsMap[#disabledColor] = arg;
          case 5:
            argsMap[#selectedShadowColor] = arg;
          case 6:
            argsMap[#checkmarkColor] = arg;
        }
      case EdgeInsetsGeometry arg:
        switch (edgeinseti++) {
          case 0:
            argsMap[#padding] = arg;
          case 1:
            argsMap[#labelPadding] = arg;
        }
      case void Function(bool) arg:
        argsMap[#onSelected] = arg;
      case TextStyle arg:
        argsMap[#labelStyle] = arg;
      case String arg:
        argsMap[#tooltip] = arg;
      case BorderSide arg:
        argsMap[#side] = arg;
      case OutlinedBorder arg:
        argsMap[#shape] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;
      case FocusNode arg:
        argsMap[#focusNode] = arg;
      case MaterialStateProperty<Color?> arg:
        argsMap[#color] = arg;
      case VisualDensity arg:
        argsMap[#visualDensity] = arg;
      case MaterialTapTargetSize arg:
        argsMap[#materialTapTargetSize] = arg;
      case IconThemeData arg:
        argsMap[#iconTheme] = arg;
      case ShapeBorder arg:
        argsMap[#avatarBorder] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#label] == null || argsMap[#selected] == null) {
      throw FlutterError(
          "ChoiceChipd requires `label:Widget` and `selected:bool`");
    }
    return true;
  }());

  return Function.apply(ChoiceChip.new, [], argsMap);
}

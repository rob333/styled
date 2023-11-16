import 'package:flutter/material.dart';

inputChipd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int doublei = 0;
  int colori = 0;
  int booli = 0;
  int widgeti = 0;
  int edgeinseti = 0;
  int functioni = 0;
  int stringi = 0;

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
          case 2:
            argsMap[#deleteIcon] = arg;
        }
      case EdgeInsetsGeometry arg:
        switch (edgeinseti++) {
          case 0:
            argsMap[#padding] = arg;
          case 1:
            argsMap[#labelPadding] = arg;
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
      case void Function() arg:
        switch (functioni++) {
          case 0:
            argsMap[#onPressed] = arg;
          case 1:
            argsMap[#onDeleted] = arg;
        }
      case void Function(bool) arg:
        argsMap[#onSelected] = arg;
      case TextStyle? arg:
        argsMap[#labelStyle] = arg;
      case String arg:
        switch (stringi++) {
          case 0:
            argsMap[#tooltip] = arg;
          case 1:
            argsMap[#deleteButtonTooltipMessage] = arg;
        }
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
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#backgroundColor] = arg;
          case 1:
            argsMap[#surfaceTintColor] = arg;
          case 2:
            argsMap[#deleteIconColor] = arg;
          case 3:
            argsMap[#shadowColor] = arg;
          case 4:
            argsMap[#selectedColor] = arg;
          case 5:
            argsMap[#disabledColor] = arg;
          case 6:
            argsMap[#selectedShadowColor] = arg;
          case 7:
            argsMap[#checkmarkColor] = arg;
        }
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#selected] = arg;
          case 1:
            argsMap[#isEnabled] = arg;
          case 2:
            argsMap[#autofocus] = arg;
          case 3:
            argsMap[#showCheckmark] = arg;
          case 4:
            argsMap[#useDeleteButtonTooltip] = arg;
        }
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#label] == null) {
      throw FlutterError("InputChipd requires `label:Widget`");
    }
    return true;
  }());

  return Function.apply(InputChip.new, [], argsMap);
}

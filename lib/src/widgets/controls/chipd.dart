import 'package:flutter/material.dart';

chipd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  int booli = 0;
  int widgeti = 0;
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
      case TextStyle arg:
        argsMap[#labelStyle] = arg;
      case void Function() arg:
        argsMap[#onDeleted] = arg;
      case String arg:
        argsMap[#deleteButtonTooltipMessage] = arg;
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
      case VisualDensity? arg:
        argsMap[#visualDensity] = arg;
      case MaterialTapTargetSize arg:
        argsMap[#materialTapTargetSize] = arg;
      case double arg:
        argsMap[#elevation] = arg;
      case int arg:
        argsMap[#elevation] = arg.toDouble();
      case IconThemeData arg:
        argsMap[#iconTheme] = arg;
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
        }
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#autofocus] = arg;
          case 1:
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
      throw FlutterError("Chipd requires `label:Widget`");
    }
    return true;
  }());

  return Function.apply(Chip.new, [], argsMap);
}

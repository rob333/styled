import 'package:flutter/material.dart';

checkboxListTiled(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  int widgeti = 0;
  int functioni = 0;
  int materialstatepropertyi = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case bool arg:
        argsMap[#value] = arg;
      case void Function(bool?) arg:
        switch (functioni++) {
          case 0:
            argsMap[#onChanged] = arg;
          case 1:
            argsMap[#onFocusChange] = arg;
        }
      case Widget arg:
        switch (widgeti++) {
          case 0:
            argsMap[#title] = arg;
          case 1:
            argsMap[#subtitle] = arg;
          case 2:
            argsMap[#secondary] = arg;
        }
      case MouseCursor arg:
        argsMap[#mouseCursor] = arg;
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#activeColor] = arg;
          case 1:
            argsMap[#checkColor] = arg;
          case 2:
            argsMap[#hoverColor] = arg;
          case 3:
            argsMap[#tileColor] = arg;
          case 4:
            argsMap[#selectedTileColor] = arg;
        }
      case MaterialStateProperty<Color?> arg:
        switch (materialstatepropertyi++) {
          case 0:
            argsMap[#fillColor] = arg;
          case 1:
            argsMap[#overlayColor] = arg;
        }
      case double arg:
        argsMap[#splashRadius] = arg;
      case MaterialTapTargetSize arg:
        argsMap[#materialTapTargetSize] = arg;
      case VisualDensity arg:
        argsMap[#visualDensity] = arg;
      case FocusNode arg:
        argsMap[#focusNode] = arg;
      case OutlinedBorder arg:
        argsMap[#checkboxShape] = arg;
      case ShapeBorder arg:
        argsMap[#shape] = arg;
      case BorderSide arg:
        argsMap[#side] = arg;
      case ListTileControlAffinity arg:
        argsMap[#controlAffinity] = arg;
      case EdgeInsetsGeometry arg:
        argsMap[#contentPadding] = arg;
      case String arg:
        argsMap[#checkboxSemanticLabel] = arg;
      // case bool arg:
      //   argsMap[#autofocus] = arg;
      // case bool arg:
      //   argsMap[#isError] = arg;
      // case bool arg:
      //   argsMap[#enabled] = arg;
      // case bool arg:
      //   argsMap[#isThreeLine] = arg;
      // case bool arg:
      //   argsMap[#dense] = arg;
      // case bool arg:
      //   argsMap[#selected] = arg;
      // case bool arg:
      //   argsMap[#tristate] = arg;
      // case bool arg:
      //   argsMap[#enableFeedback] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#value] == null || argsMap[#onChanged] == null) {
      throw FlutterError("CheckboxListTiled requires `value:bool` and `onChanged:void Function(bool?)`");
    }
    return true;
  }());

  return Function.apply(CheckboxListTile.new, [], argsMap);
}

import 'package:flutter/material.dart';

radioListTiled(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  int materialstatei = 0;
  int widgeti = 0;
  int booli = 0;
  int objecti = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case void Function(dynamic) arg:
        argsMap[#onChanged] = arg;
      case MouseCursor arg:
        argsMap[#mouseCursor] = arg;
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#toggleable] = arg;
          case 1:
            argsMap[#autofocus] = arg;
          case 2:
            argsMap[#selected] = arg;
          case 3:
            argsMap[#isThreeLine] = arg;
          case 4:
            argsMap[#dense] = arg;
          case 5:
            argsMap[#enableFeedback] = arg;
        }
      case MaterialStateProperty<Color?> arg:
        switch (materialstatei++) {
          case 0:
            argsMap[#fillColor] = arg;
          case 1:
            argsMap[#overlayColor] = arg;
        }
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#activeColor] = arg;
          case 1:
            argsMap[#hoverColor] = arg;
          case 2:
            argsMap[#tileColor] = arg;
          case 3:
            argsMap[#selectedTileColor] = arg;
        }
      case double arg:
        argsMap[#splashRadius] = arg;
      case int arg:
        argsMap[#splashRadius] = arg.toDouble();
      case MaterialTapTargetSize arg:
        argsMap[#materialTapTargetSize] = arg;
      case Widget arg:
        switch (widgeti++) {
          case 0:
            argsMap[#title] = arg;
          case 1:
            argsMap[#subtitle] = arg;
          case 2:
            argsMap[#secondary] = arg;
        }
      case ListTileControlAffinity arg:
        argsMap[#controlAffinity] = arg;
      case EdgeInsetsGeometry arg:
        argsMap[#contentPadding] = arg;
      case ShapeBorder arg:
        argsMap[#shape] = arg;
      case VisualDensity arg:
        argsMap[#visualDensity] = arg;
      case FocusNode arg:
        argsMap[#focusNode] = arg;
      case void Function(bool) arg:
        argsMap[#onFocusChange] = arg;
      case Object arg:
        switch (objecti++) {
          case 0:
            argsMap[#value] = arg;
          case 1:
            argsMap[#groupValue] = arg;
        }
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#value] == null ||
        argsMap[#groupValue] == null ||
        argsMap[#onChanged] == null) {
      throw FlutterError(
          "RadioListTiled requires `value:Object`, `groupValue:Object` and `onChanged:void Function(dynamic)`");
    }
    return true;
  }());

  return Function.apply(RadioListTile.new, [], argsMap);
}

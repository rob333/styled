import 'package:flutter/material.dart';

checkboxd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  int materiastatepropertyi = 0;
  int booli = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#value] = arg;
          case 1:
            argsMap[#autofocus] = arg;
          case 2:
            argsMap[#isError] = arg;
          case 3:
            argsMap[#tristate] = arg;
        }
      case String arg:
        argsMap[#semanticLabel] = arg;
      case void Function(bool?) arg:
        argsMap[#onChanged] = arg;
      case MouseCursor arg:
        argsMap[#mouseCursor] = arg;
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#activeColor] = arg;
          case 1:
            argsMap[#checkColor] = arg;
          case 2:
            argsMap[#focusColor] = arg;
          case 3:
            argsMap[#hoverColor] = arg;
        }
      case MaterialStateProperty<Color?> arg:
        switch (materiastatepropertyi++) {
          case 0:
            argsMap[#fillColor] = arg;
          case 1:
            argsMap[#overlayColor] = arg;
        }
      case double arg:
        argsMap[#splashRadius] = arg;
      case int arg:
        argsMap[#splashRadius] = arg.toDouble();
      case MaterialTapTargetSize arg:
        argsMap[#materialTapTargetSize] = arg;
      case VisualDensity arg:
        argsMap[#visualDensity] = arg;
      case FocusNode arg:
        argsMap[#focusNode] = arg;
      case OutlinedBorder arg:
        argsMap[#shape] = arg;
      case BorderSide arg:
        argsMap[#side] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#value] == null || argsMap[#onChanged] == null) {
      throw FlutterError("Checkboxd requires `value:bool` and `onChanged:void Function(bool?)`");
    }
    return true;
  }());

  return Function.apply(Checkbox.new, [], argsMap);
}

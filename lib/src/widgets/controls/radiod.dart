import 'package:flutter/material.dart';

radiod(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  int materialstatei = 0;
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
            argsMap[#focusColor] = arg;
          case 2:
            argsMap[#hoverColor] = arg;
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
          "Radiod requires `value:Object`, `groupValue:Object` and `onChanged:void Function(dynamic)`");
    }
    return true;
  }());

  return Function.apply(Radio.new, [], argsMap);
}

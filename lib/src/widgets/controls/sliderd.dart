import 'package:flutter/material.dart';

sliderd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int functioni = 0;
  int doublei = 0;
  int colori = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#value] = arg;
          case 1:
            argsMap[#min] = arg;
          case 2:
            argsMap[#max] = arg;
          case 3:
            argsMap[#secondaryTrackValue] = arg;
        }
      case String Function(double) arg:
        argsMap[#semanticFormatterCallback] = arg;
      case void Function(double) arg:
        switch (functioni++) {
          case 0:
            argsMap[#onChanged] = arg;
          case 1:
            argsMap[#onChangeStart] = arg;
          case 2:
            argsMap[#onChangeEnd] = arg;
        }
      case int arg:
        argsMap[#divisions] = arg;
      case String arg:
        argsMap[#label] = arg;
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#activeColor] = arg;
          case 1:
            argsMap[#inactiveColor] = arg;
          case 2:
            argsMap[#secondaryActiveColor] = arg;
          case 3:
            argsMap[#thumbColor] = arg;
        }
      case MaterialStateProperty<Color?> arg:
        argsMap[#overlayColor] = arg;
      case MouseCursor arg:
        argsMap[#mouseCursor] = arg;
      case FocusNode arg:
        argsMap[#focusNode] = arg;
      case bool arg:
        argsMap[#autofocus] = arg;
      case SliderInteraction arg:
        argsMap[#allowedInteraction] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#value] == null || argsMap[#onChanged] == null) {
      throw FlutterError("Sliderd requires `value:double` and `onChanged:void Function(double)`");
    }
    return true;
  }());

  return Function.apply(Slider.new, [], argsMap);
}

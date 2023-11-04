import 'package:flutter/material.dart';

rangeSliderd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  int doublei = 0;
  int functioni = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case RangeValues arg:
        argsMap[#values] = arg;
      case String Function(double) arg:
        argsMap[#semanticFormatterCallback] = arg;
      case void Function(RangeValues) arg:
        switch (functioni++) {
          case 0:
            argsMap[#onChanged] = arg;
          case 1:
            argsMap[#onChangeStart] = arg;
          case 2:
            argsMap[#onChangeEnd] = arg;
        }
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#min] = arg;
          case 1:
            argsMap[#max] = arg;
        }
      case int arg:
        argsMap[#divisions] = arg;
      case RangeLabels arg:
        argsMap[#labels] = arg;
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#activeColor] = arg;
          case 1:
            argsMap[#inactiveColor] = arg;
        }
      case MaterialStateProperty<Color?> arg:
        argsMap[#overlayColor] = arg;
      case MaterialStateProperty<MouseCursor?> arg:
        argsMap[#mouseCursor] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#value] == null || argsMap[#onChanged] == null) {
      throw FlutterError("Sliderd requires `value:RangeValues` and `onChanged:void Function(RangeValues)`");
    }
    return true;
  }());

  return Function.apply(RangeSlider.new, [], argsMap);
}

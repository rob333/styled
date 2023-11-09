import 'package:flutter/material.dart';

tabPageSelectord(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case TabController arg:
        argsMap[#controller] = arg;
      case double arg:
        argsMap[#indicatorSize] = arg;
      case int arg:
        argsMap[#indicatorSize] = arg.toDouble();
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#color] = arg;
          case 1:
            argsMap[#selectedColor] = arg;
        }
      case BorderStyle arg:
        argsMap[#borderStyle] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(TabPageSelector.new, [], argsMap);
}

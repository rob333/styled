import 'package:flutter/material.dart';

checkedPopupMenuItemd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int booli = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#checked] = arg;
          case 1:
            argsMap[#enabled] = arg;
        }
      case EdgeInsets arg:
        argsMap[#padding] = arg;
      case double arg:
        argsMap[#height] = arg;
      case int arg:
        argsMap[#height] = arg.toDouble();
      case MouseCursor arg:
        argsMap[#mouseCursor] = arg;
      case Object arg:
        argsMap[#value] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(CheckedPopupMenuItem.new, [], argsMap);
}

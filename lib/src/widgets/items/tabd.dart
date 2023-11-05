import 'package:flutter/material.dart';

tabd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int widgeti = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case String arg:
        argsMap[#text] = arg;
      case Widget arg:
        switch (widgeti++) {
          case 0:
            argsMap[#icon] = arg;
          case 1:
            argsMap[#child] = arg;
        }
      case EdgeInsetsGeometry arg:
        argsMap[#iconMargin] = arg;
      case double arg:
        argsMap[#height] = arg;
      case int arg:
        argsMap[#height] = arg.toDouble();
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(Tab.new, [], argsMap);
}

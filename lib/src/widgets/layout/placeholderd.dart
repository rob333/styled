import 'package:flutter/material.dart';

placeholderd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int doublei = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case Color arg:
        argsMap[#color] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#fallbackWidth] = arg;
          case 1:
            argsMap[#fallbackHeight] = arg;
          case 2:
            argsMap[#strokeWidth] = arg;
        }
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#fallbackWidth] = arg.toDouble();
          case 1:
            argsMap[#fallbackHeight] = arg.toDouble();
          case 2:
            argsMap[#strokeWidth] = arg.toDouble();
        }
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(Placeholder.new, [], argsMap);
}

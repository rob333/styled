import 'package:flutter/material.dart';

intrinsicWidthd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int doublei = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#stepWidth] = arg;
          case 1:
            argsMap[#stepHeight] = arg;
        }
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#stepWidth] = arg.toDouble();
          case 1:
            argsMap[#stepHeight] = arg.toDouble();
        }
      case Widget arg:
        argsMap[#child] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(IntrinsicWidth.new, [], argsMap);
}

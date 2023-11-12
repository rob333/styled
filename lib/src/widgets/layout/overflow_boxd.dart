import 'package:flutter/material.dart';

overflowBoxd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int doublei = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case AlignmentGeometry arg:
        argsMap[#alignment] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#minWidth] = arg;
          case 1:
            argsMap[#maxWidth] = arg;
          case 2:
            argsMap[#minHeight] = arg;
          case 3:
            argsMap[#maxHeight] = arg;
        }
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#minWidth] = arg.toDouble();
          case 1:
            argsMap[#maxWidth] = arg.toDouble();
          case 2:
            argsMap[#minHeight] = arg.toDouble();
          case 3:
            argsMap[#maxHeight] = arg.toDouble();
        }
      case Widget arg:
        argsMap[#child] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(OverflowBox.new, [], argsMap);
}

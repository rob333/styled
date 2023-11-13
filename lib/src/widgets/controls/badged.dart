import 'package:flutter/material.dart';

badged(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int widgeti = 0;
  int colori = 0;
  int doublei = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        switch (widgeti++) {
          case 0:
            argsMap[#child] = arg;
          case 1:
            argsMap[#label] = arg;
        }
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#backgroundColor] = arg;
          case 1:
            argsMap[#textColor] = arg;
        }
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#smallSize] = arg;
          case 1:
            argsMap[#largeSize] = arg;
        }
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#smallSize] = arg.toDouble();
          case 1:
            argsMap[#largeSize] = arg.toDouble();
        }
      case TextStyle arg:
        argsMap[#textStyle] = arg;
      case EdgeInsetsGeometry arg:
        argsMap[#padding] = arg;
      case AlignmentGeometry arg:
        argsMap[#alignment] = arg;
      case Offset arg:
        argsMap[#offset] = arg;
      case bool arg:
        argsMap[#isLabelVisible] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(Badge.new, [], argsMap);
}

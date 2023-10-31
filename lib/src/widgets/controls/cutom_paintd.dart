import 'package:flutter/material.dart';

customPaintd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int painteri = 0;
  int booli = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case CustomPainter arg:
        switch (painteri++) {
          case 0:
            argsMap[#painter] = arg;
          case 1:
            argsMap[#foregroundPainter] = arg;
        }
      case Size arg:
        argsMap[#size] = arg;
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#isComplex] = arg;
          case 1:
            argsMap[#willChange] = arg;
        }
      case Widget arg:
        argsMap[#child] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(CustomPaint.new, [], argsMap);
}

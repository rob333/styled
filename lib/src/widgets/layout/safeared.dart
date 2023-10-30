import 'package:flutter/material.dart';

safeAread(List argsList, Map<Symbol, dynamic> origArgsMap) {
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
            argsMap[#left] = arg;
          case 1:
            argsMap[#top] = arg;
          case 2:
            argsMap[#right] = arg;
          case 3:
            argsMap[#bottom] = arg;
          case 4:
            argsMap[#maintainBottomViewPadding] = arg;
        }
      case EdgeInsets arg:
        argsMap[#minimum] = arg;
    }
  }

  // named args(origArgsMap) precede positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(SafeArea.new, [], argsMap);
}

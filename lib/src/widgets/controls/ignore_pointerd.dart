import 'package:flutter/material.dart';

ignorePointerd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int booli = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#ignoring] = arg;
          case 1:
            argsMap[#ignoringSemantics] = arg;
        }
      case Widget arg:
        argsMap[#child] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(IgnorePointer.new, [], argsMap);
}

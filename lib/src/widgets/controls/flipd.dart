import 'package:flutter/material.dart';

flipd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int booli = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#flipX] = arg;
          case 1:
            argsMap[#flipY] = arg;
          case 2:
            argsMap[#transformHitTests] = arg;
        }
      case Offset arg:
        argsMap[#origin] = arg;
      case FilterQuality arg:
        argsMap[#filterQuality] = arg;
      case Widget arg:
        argsMap[#child] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(Transform.flip, [], argsMap);
}

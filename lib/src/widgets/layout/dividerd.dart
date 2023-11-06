import 'package:flutter/material.dart';

dividerd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int doublei = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#height] = arg;
          case 1:
            argsMap[#thickness] = arg;
          case 2:
            argsMap[#indent] = arg;
          case 3:
            argsMap[#endIndent] = arg;
        }
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#height] = arg.toDouble();
          case 1:
            argsMap[#thickness] = arg.toDouble();
          case 2:
            argsMap[#indent] = arg.toDouble();
          case 3:
            argsMap[#endIndent] = arg.toDouble();
        }
      case Color arg:
        argsMap[#color] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(Divider.new, [], argsMap);
}

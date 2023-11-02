import 'package:flutter/material.dart';

positionedd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int doublei = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#left] = arg;
          case 1:
            argsMap[#top] = arg;
          case 2:
            argsMap[#right] = arg;
          case 3:
            argsMap[#bottom] = arg;
          case 4:
            argsMap[#width] = arg;
          case 5:
            argsMap[#height] = arg;
        }
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#left] = arg.toDouble();
          case 1:
            argsMap[#top] = arg.toDouble();
          case 2:
            argsMap[#right] = arg.toDouble();
          case 3:
            argsMap[#bottom] = arg.toDouble();
          case 4:
            argsMap[#width] = arg.toDouble();
          case 5:
            argsMap[#height] = arg.toDouble();
        }
      case Widget arg:
        argsMap[#child] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(Positioned.new, [], argsMap);
}

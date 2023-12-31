import 'package:flutter/material.dart';

fittedBoxd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case BoxFit arg:
        argsMap[#fit] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case AlignmentGeometry arg:
        argsMap[#alignment] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(FittedBox.new, [], argsMap);
}

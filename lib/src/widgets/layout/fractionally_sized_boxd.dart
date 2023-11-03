import 'package:flutter/material.dart';

fractionallySizedBoxd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int doublei = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case AlignmentGeometry arg:
        argsMap[#alignment] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#widthFactor] = arg;
          case 1:
            argsMap[#heightFactor] = arg;
        }
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#widthFactor] = arg;
          case 1:
            argsMap[#heightFactor] = arg;
        }
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(FractionallySizedBox.new, [], argsMap);
}

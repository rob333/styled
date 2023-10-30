import 'package:flutter/widgets.dart';

centerd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int doublei = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#widthFactor] = arg;
          case 1:
            argsMap[#heightFactor] = arg;
        }
      case Widget arg:
        argsMap[#child] = arg;
    }
  }

  // named args(origArgsMap) precede positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(Center.new, [], argsMap);
}

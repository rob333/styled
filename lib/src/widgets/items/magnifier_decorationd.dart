import 'package:flutter/material.dart';

magnifierDecorationd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  final List<BoxShadow> shadows = [];

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case double arg:
        argsMap[#opacity] = arg;
      case List<BoxShadow> arg:
        // argsMap[#shadows] = arg;
        shadows.addAll(arg);
      case BoxShadow arg:
        shadows.add(arg);
      case ShapeBorder arg:
        argsMap[#shape] = arg;
    }
  }

  argsMap[#shadows] = shadows;

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(MagnifierDecoration.new, [], argsMap);
}

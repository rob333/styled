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

  // named args(origArgsMap) precede positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);

    // merge shadows
    final list = argsMap[#shadows] as List<BoxShadow>?;
    if (list != null) {
      shadows.addAll(list);
    }
  }

  argsMap[#shadows] = shadows;

  return Function.apply(MagnifierDecoration.new, [], argsMap);
}

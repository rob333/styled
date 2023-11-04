import 'package:flutter/material.dart';

animatedIcond(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case AnimatedIconData arg:
        argsMap[#icon] = arg;
      case Animation<double> arg:
        argsMap[#progress] = arg;
      case Color arg:
        argsMap[#color] = arg;
      case double arg:
        argsMap[#size] = arg;
      case int arg:
        argsMap[#size] = arg.toDouble();
      case String arg:
        argsMap[#semanticLabel] = arg;
      case TextDirection arg:
        argsMap[#textDirection] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#icon] == null || argsMap[#progress]) {
      throw FlutterError("AnimatedIcond requires `icon:AnimatedIconData` and `Animation<double>:progress`");
    }
    return true;
  }());

  return Function.apply(AnimatedIcon.new, [], argsMap);
}

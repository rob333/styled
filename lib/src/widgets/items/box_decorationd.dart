import 'package:flutter/material.dart';

boxDecorationd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  final List<BoxShadow> boxShadows = [];

  for (final arg in argsList) {
    switch (arg) {
      case Color arg:
        argsMap[#color] = arg;
      case DecorationImage arg:
        argsMap[#image] = arg;
      case BoxBorder arg:
        argsMap[#border] = arg;
      case BorderRadiusGeometry arg:
        argsMap[#borderRadius] = arg;
      case List<BoxShadow> arg:
        // argsMap[#boxShadow] = arg;
        boxShadows.addAll(arg);
      case BoxShadow arg:
        boxShadows.add(arg);
      case Gradient arg:
        argsMap[#gradient] = arg;
      case BlendMode arg:
        argsMap[#backgroundBlendMode] = arg;
      case BoxShape arg:
        argsMap[#shape] = arg;
    }
  }

  // named args(origArgsMap) precede positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);

    // merge boxShadows
    final list = argsMap[#boxShadow] as List<BoxShadow>?;
    if (list != null) {
      boxShadows.addAll(list);
    }
  }

  if (boxShadows.isNotEmpty) {
    argsMap[#boxShadow] = boxShadows;
  }

  return Function.apply(BoxDecoration.new, [], argsMap);
}

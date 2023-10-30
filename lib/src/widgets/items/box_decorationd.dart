import 'package:flutter/material.dart';

boxDecorationd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  final List<BoxShadow> boxShadow = [];

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
        boxShadow.addAll(arg);
      case BoxShadow arg:
        boxShadow.add(arg);
      case Gradient arg:
        argsMap[#gradient] = arg;
      case BlendMode arg:
        argsMap[#backgroundBlendMode] = arg;
      case BoxShape arg:
        argsMap[#shape] = arg;
    }
  }

  if (boxShadow.isNotEmpty) {
    argsMap[#boxShadow] = boxShadow;
  }

  // named args(origArgsMap) precede positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(BoxDecoration.new, [], argsMap);
}

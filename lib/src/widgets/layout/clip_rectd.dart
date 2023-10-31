import 'package:flutter/material.dart';

clipRectd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;
      case CustomClipper<Path> arg:
        argsMap[#clipper] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(ClipRect.new, [], argsMap);
}

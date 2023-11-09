import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

mouseRegiond(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case void Function(PointerEnterEvent) arg:
        argsMap[#onEnter] = arg;
      case void Function(PointerExitEvent) arg:
        argsMap[#onExit] = arg;
      case void Function(PointerHoverEvent) arg:
        argsMap[#onHover] = arg;
      case MouseCursor arg:
        argsMap[#cursor] = arg;
      case bool arg:
        argsMap[#opaque] = arg;
      case HitTestBehavior arg:
        argsMap[#hitTestBehavior] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(MouseRegion.new, [], argsMap);
}

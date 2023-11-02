import 'package:flutter/material.dart';

animatedContainerd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int decorationi = 0;
  int doublei = 0;
  int aligni = 0;
  int edgeinseti = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Duration arg:
        argsMap[#duration] = arg;
      case AlignmentGeometry arg:
        switch (aligni++) {
          case 0:
            argsMap[#alignment] = arg;
          case 1:
            argsMap[#transformAlignment] = arg;
        }
      case EdgeInsetsGeometry arg:
        switch (edgeinseti++) {
          case 0:
            argsMap[#padding] = arg;
          case 1:
            argsMap[#margin] = arg;
        }
      case Color arg:
        argsMap[#color] = arg;
      case Decoration arg:
        switch (decorationi++) {
          case 0:
            argsMap[#decoration] = arg;
          case 1:
            argsMap[#foregroundDecoration] = arg;
        }
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#width] = arg;
          case 1:
            argsMap[#height] = arg;
        }
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#width] = arg.toDouble();
          case 1:
            argsMap[#height] = arg.toDouble();
        }
      case BoxConstraints arg:
        argsMap[#constraints] = arg;
      case Matrix4 arg:
        argsMap[#transform] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;
      case Curve arg:
        argsMap[#curve] = arg;
      case void Function() arg:
        argsMap[#onEnd] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#duration]) {
      throw FlutterError("AnimatedPositionedd without `duration:Duration`");
    }
    return true;
  }());

  return Function.apply(AnimatedContainer.new, [], argsMap);
}

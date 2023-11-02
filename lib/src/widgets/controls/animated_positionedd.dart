import 'package:flutter/material.dart';

animatedPositionedd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int doublei = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#left] = arg;
          case 1:
            argsMap[#top] = arg;
          case 2:
            argsMap[#right] = arg;
          case 3:
            argsMap[#bottom] = arg;
          case 4:
            argsMap[#width] = arg;
          case 5:
            argsMap[#height] = arg;
        }
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#left] = arg.toDouble();
          case 1:
            argsMap[#top] = arg.toDouble();
          case 2:
            argsMap[#right] = arg.toDouble();
          case 3:
            argsMap[#bottom] = arg.toDouble();
          case 4:
            argsMap[#width] = arg.toDouble();
          case 5:
            argsMap[#height] = arg.toDouble();
        }
      case Curve arg:
        argsMap[#curve] = arg;
      case Duration arg:
        argsMap[#duration] = arg;
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
    if (argsMap[#child] == null || argsMap[#duration]) {
      throw FlutterError("AnimatedPositionedd without `child:Widget` and `duration:Duration`");
    }
    return true;
  }());

  return Function.apply(AnimatedPositioned.new, [], argsMap);
}

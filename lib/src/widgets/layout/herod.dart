import 'package:flutter/material.dart';

herod(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case Tween<Rect?> Function(Rect?, Rect?) arg:
        argsMap[#createRectTween] = arg;
      case Widget Function(BuildContext, Animation<double>, HeroFlightDirection,
            BuildContext, BuildContext) arg:
        argsMap[#flightShuttleBuilder] = arg;
      case Widget Function(BuildContext, Size, Widget) arg:
        argsMap[#placeholderBuilder] = arg;
      case bool arg:
        argsMap[#transitionOnUserGestures] = arg;
      case Object arg:
        argsMap[#tag] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#child] == null && argsMap[#tag] == null) {
      throw FlutterError("Hero without `child:Widget`, `tag:Object`");
    } else if (argsMap[#child] == null) {
      throw FlutterError("Hero without `child:Widget`");
    } else if (argsMap[#tag] == null) {
      throw FlutterError("Hero without `tag:Object`");
    }
    return true;
  }());

  return Function.apply(Hero.new, [], argsMap);
}

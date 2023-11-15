import 'package:flutter/material.dart';

decoratedBoxTransitiond(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  int doublei = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Animation<Decoration> arg:
        argsMap[#decoration] = arg;
      case DecorationPosition arg:
        argsMap[#position] = arg;
      case Widget arg:
        argsMap[#child] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#child] == null || argsMap[#decoration] == null) {
      throw FlutterError("DecoratedBoxTransitiond requires `child:Widget` and `decoration:Animation<Decoration>");
    }
    return true;
  }());

  return Function.apply(DecoratedBoxTransition.new, [], argsMap);
}

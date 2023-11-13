import 'package:flutter/material.dart';

fractionalTranslationd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  int doublei = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Offset arg:
        argsMap[#translation] = arg;
      case bool arg:
        argsMap[#transformHitTests] = arg;
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
    if (argsMap[#translation] == null) {
      throw FlutterError("FractionalTranslationd requires `translation:Offset`");
    }
    return true;
  }());

  return Function.apply(FractionalTranslation.new, [], argsMap);
}

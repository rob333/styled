import 'package:flutter/material.dart';

colorFilteredd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case ColorFilter arg:
        argsMap[#colorFilter] = arg;
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
    if (argsMap[#colorFilter] == null) {
      throw FlutterError("ColorFilteredd requires `colorFilter:ColorFilter`");
    }
    return true;
  }());

  return Function.apply(ColorFiltered.new, [], argsMap);
}

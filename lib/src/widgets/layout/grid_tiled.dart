import 'package:flutter/material.dart';

gridTiled(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int widgeti = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;

      case Widget arg:
        switch (widgeti++) {
          case 0:
            argsMap[#child] = arg;
          case 1:
            argsMap[#header] = arg;
          case 2:
            argsMap[#footer] = arg;
        }
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#child] == null) {
      throw FlutterError("GridTiled without `child:Widget`");
    }
    return true;
  }());

  return Function.apply(GridTile.new, [], argsMap);
}

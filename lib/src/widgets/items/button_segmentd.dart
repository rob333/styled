import 'package:flutter/material.dart';

buttonSegmentd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int widgeti = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        switch (widgeti++) {
          case 0:
            argsMap[#icon] = arg;
          case 1:
            argsMap[#label] = arg;
        }
      case String arg:
        argsMap[#tooltip] = arg;
      case bool arg:
        argsMap[#enabled] = arg;
      case Object arg:
        argsMap[#value] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#value] == null) {
      throw FlutterError("ButtonSegmentd requires `value:dynamic`");
    }
    return true;
  }());

  return Function.apply(ButtonSegment.new, [], argsMap);
}

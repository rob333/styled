import 'package:flutter/material.dart';

builderd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget Function(BuildContext) arg:
        argsMap[#builder] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#builder] == null) {
      throw FlutterError("Builderd requires `builder:Widget Function(BuildContext)`");
    }
    return true;
  }());

  return Function.apply(Builder.new, [], argsMap);
}

import 'package:flutter/material.dart';

constrainedBoxd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case BoxConstraints arg:
        argsMap[#constraints] = arg;
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
    if (argsMap[#constraints] == null) {
      throw FlutterError("ConstrainedBoxd requires `constraints:BoxConstraints`");
    }
    return true;
  }());

  return Function.apply(ConstrainedBox.new, [], argsMap);
}

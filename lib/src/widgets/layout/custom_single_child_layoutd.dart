import 'package:flutter/material.dart';

customSingleChildLayoutd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case SingleChildLayoutDelegate arg:
        argsMap[#delegate] = arg;
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
    if (argsMap[#delegate] == null) {
      throw FlutterError("CustomSingleChildLayoutd requires `delegate:SingleChildLayoutDelegate`");
    }
    return true;
  }());

  return Function.apply(CustomSingleChildLayout.new, [], argsMap);
}

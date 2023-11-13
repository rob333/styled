import 'package:flutter/material.dart';

sliverPaddingd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case EdgeInsetsGeometry arg:
        argsMap[#padding] = arg;
      case Widget arg:
        argsMap[#sliver] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#padding] == null) {
      throw FlutterError("SliverPaddingd requires `padding:EdgeInsetsGeometry`");
    }
    return true;
  }());

  return Function.apply(SliverPadding.new, [], argsMap);
}

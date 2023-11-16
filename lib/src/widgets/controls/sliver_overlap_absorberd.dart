import 'package:flutter/material.dart';

sliverOverlapAbsorberd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case SliverOverlapAbsorberHandle arg:
        argsMap[#handle] = arg;
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
    if (argsMap[#handle] == null) {
      throw FlutterError(
          "SliverOverlapAbsorberd requires `handle:SliverOverlapAbsorberHandle`");
    }
    return true;
  }());

  return Function.apply(SliverOverlapAbsorber.new, [], argsMap);
}

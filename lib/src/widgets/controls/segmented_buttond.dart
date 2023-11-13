import 'package:flutter/material.dart';

segmentedButtond(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int booli = 0;
  final List<ButtonSegment> segments = [];

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case List<ButtonSegment> arg:
        // argsMap[#segments] = arg;
        segments.addAll(arg);
      case ButtonSegment arg:
        segments.add(arg);
      case Set arg:
        argsMap[#selected] = arg;
      case void Function(Set) arg:
        argsMap[#onSelectionChanged] = arg;
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#multiSelectionEnabled] = arg;
          case 1:
            argsMap[#emptySelectionAllowed] = arg;
          case 2:
            argsMap[#showSelectedIcon] = arg;
        }
      case ButtonStyle arg:
        argsMap[#style] = arg;
      case Widget arg:
        argsMap[#selectedIcon] = arg;
    }
  }

  argsMap[#segments] = segments;

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#segments] == null || argsMap[#selected] == null) {
      throw FlutterError("SegmentedButtond requires `segments:List<ButtonSegment>` and `selected:Set`");
    }
    return true;
  }());

  return Function.apply(SegmentedButton.new, [], argsMap);
}

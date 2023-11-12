import 'package:flutter/material.dart';

unconstrainedBoxd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case TextDirection arg:
        argsMap[#textDirection] = arg;
      case AlignmentGeometry arg:
        argsMap[#alignment] = arg;
      case Axis arg:
        argsMap[#constrainedAxis] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(UnconstrainedBox.new, [], argsMap);
}

import 'package:flutter/material.dart';

sizedOverflowBoxd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Size arg:
        argsMap[#size] = arg;
      case AlignmentGeometry arg:
        argsMap[#alignment] = arg;
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
    if (argsMap[#size] == null) {
      throw FlutterError("SizedOverflowBoxd requires `size:Size`");
    }
    return true;
  }());

  return Function.apply(SizedOverflowBox.new, [], argsMap);
}

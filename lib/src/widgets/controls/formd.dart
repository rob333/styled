import 'package:flutter/material.dart';

formd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case void Function(bool) arg:
        argsMap[#onPopInvoked] = arg;
      case bool arg:
        argsMap[#canPop] = arg;
      case Future<bool> Function() arg:
        argsMap[#onWillPop] = arg;
      case void Function() arg:
        argsMap[#onChanged] = arg;
      case AutovalidateMode arg:
        argsMap[#autovalidateMode] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#child] == null) {
      throw FlutterError("Formd requires `child:Widget`");
    }
    return true;
  }());

  return Function.apply(Form.new, [], argsMap);
}

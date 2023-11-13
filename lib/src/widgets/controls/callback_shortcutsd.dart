import 'package:flutter/material.dart';

callbackShortcutsd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Map<ShortcutActivator, void Function()> arg:
        argsMap[#bindings] = arg;
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
    if (argsMap[#child] == null || argsMap[#bindings] == null) {
      throw FlutterError("CallbackShortcutsd requires `child:Widget` and `bindings:Map<ShortcutActivator, void Function()>`");
    }
    return true;
  }());

  return Function.apply(CallbackShortcuts.new, [], argsMap);
}

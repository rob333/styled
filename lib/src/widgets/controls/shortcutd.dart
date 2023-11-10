import 'package:flutter/material.dart';

shortcutsd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Map<ShortcutActivator, Intent> arg:
        argsMap[#shortcuts] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case String arg:
        argsMap[#debugLabel] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#child] == null) {
      throw FlutterError("Shortcutsd requires `child:Widget` and `shortcuts:Map<ShortcutActivator, Intent>`");
    }
    return true;
  }());

  return Function.apply(Shortcuts.new, [], argsMap);
}

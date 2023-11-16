import 'package:flutter/material.dart';

popupMenuItemd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case void Function() arg:
        argsMap[#onTap] = arg;
      case bool arg:
        argsMap[#enabled] = arg;
      case double arg:
        argsMap[#height] = arg;
      case EdgeInsets arg:
        argsMap[#padding] = arg;
      case TextStyle arg:
        argsMap[#textStyle] = arg;
      case MaterialStateProperty<TextStyle?> arg:
        argsMap[#labelTextStyle] = arg;
      case MouseCursor arg:
        argsMap[#mouseCursor] = arg;
      case Object arg:
        argsMap[#value] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#child] == null) {
      throw FlutterError("PopupMenuItemd requires `child:Widget`");
    }
    return true;
  }());

  return Function.apply(PopupMenuItem.new, [], argsMap);
}

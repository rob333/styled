import 'package:flutter/material.dart';

scrollbard(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int booli = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case ScrollController arg:
        argsMap[#controller] = arg;
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#thumbVisibility] = arg;
          case 1:
            argsMap[#trackVisibility] = arg;
          case 2:
            argsMap[#interactive] = arg;
          case 3:
            argsMap[#showTrackOnHover] = arg;
        }
      case double arg:
        argsMap[#thickness] = arg;
      case int arg:
        argsMap[#thickness] = arg.toDouble();
      case Radius arg:
        argsMap[#radius] = arg;
      case bool Function(ScrollNotification) arg:
        argsMap[#notificationPredicate] = arg;
      case ScrollbarOrientation arg:
        argsMap[#scrollbarOrientation] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#child] == null) {
      throw FlutterError("Scrollbard requires `child:Widget`");
    }
    return true;
  }());

  return Function.apply(Scrollbar.new, [], argsMap);
}

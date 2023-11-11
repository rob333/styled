import 'package:flutter/material.dart';

navigationDestinationd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int widgeti = 0;
  int stringi = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        switch (widgeti++) {
          case 0:
            argsMap[#icon] = arg;
          case 1:
            argsMap[#selectedIcon] = arg;
        }
      case String arg:
        switch (stringi++) {
          case 0:
            argsMap[#label] = arg;
          case 1:
            argsMap[#tooltip] = arg;
        }
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#icon] == null) {
      throw FlutterError("NavigationDestinationd requires `icon:Widget` and `label:String`");
    }
    return true;
  }());

  return Function.apply(NavigationDestination.new, [], argsMap);
}

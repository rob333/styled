import 'package:flutter/material.dart';

bottomNavigationBarItemd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int widgeti = 0;
  int stringi = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Widget arg:
        switch (widgeti++) {
          case 0:
            argsMap[#icon] = arg;
          case 1:
            argsMap[#activeIcon] = arg;
        }
      case String arg:
        switch (stringi++) {
          case 0:
            argsMap[#label] = arg;
          case 1:
            argsMap[#tooltip] = arg;
        }
      case Color arg:
        argsMap[#backgroundColor] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#icon] == null) {
      throw FlutterError("BottomNavigationBarItemd requires `icon:Widget`");
    }
    return true;
  }());

  return Function.apply(BottomNavigationBarItem.new, [], argsMap);
}

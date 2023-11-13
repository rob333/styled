import 'package:flutter/material.dart';

refreshIndicatord(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  int doublei = 0;
  int stringi = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#child] = arg;
      case Future<void> Function() arg:
        argsMap[#onRefresh] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#displacement] = arg;
          case 1:
            argsMap[#edgeOffset] = arg;
          case 2:
            argsMap[#strokeWidth] = arg;
        }
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#displacement] = arg.toDouble();
          case 1:
            argsMap[#edgeOffset] = arg.toDouble();
          case 2:
            argsMap[#strokeWidth] = arg.toDouble();
        }
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#color] = arg;
          case 1:
            argsMap[#backgroundColor] = arg;
        }
      case bool Function(ScrollNotification) arg:
        argsMap[#notificationPredicate] = arg;
      case String arg:
        switch (stringi++) {
          case 0:
            argsMap[#semanticsLabel] = arg;
          case 1:
            argsMap[#semanticsValue] = arg;
        }
      case RefreshIndicatorTriggerMode arg:
        argsMap[#triggerMode] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#child] == null || argsMap[#onRefresh] == null) {
      throw FlutterError("RefreshIndicatord requires `child:Widget` and `onRefresh:Future<void> Function()`");
    }
    return true;
  }());

  return Function.apply(RefreshIndicator.new, [], argsMap);
}

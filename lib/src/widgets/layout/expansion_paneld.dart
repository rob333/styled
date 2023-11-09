import 'package:flutter/material.dart';

expansionPaneld(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int booli = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Widget Function(BuildContext, bool) arg:
        argsMap[#headerBuilder] = arg;
      case Widget arg:
        argsMap[#body] = arg;
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#isExpanded] = arg;
          case 1:
            argsMap[#canTapOnHeader] = arg;
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
    if (argsMap[#body] == null || argsMap[#headerBuilder]) {
      throw FlutterError("ExpansionPaneld requires `body:Widget` and `headerBuilder:Widget Function(BuildContext, bool)");
    }
    return true;
  }());

  return Function.apply(ExpansionPanel.new, [], argsMap);
}

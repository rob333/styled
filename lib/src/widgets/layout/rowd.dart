import 'package:flutter/widgets.dart';

rowd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  final newArgsList = [];

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case MainAxisAlignment arg:
        argsMap[#mainAxisAlignment] = arg;
      case MainAxisSize arg:
        argsMap[#mainAxisSize] = arg;
      case CrossAxisAlignment arg:
        argsMap[#crossAxisAlignment] = arg;
      case TextDirection arg:
        argsMap[#textDirection] = arg;
      case VerticalDirection arg:
        argsMap[#verticalDirection] = arg;
      case TextBaseline arg:
        argsMap[#textBaseline] = arg;
      case List<Widget> arg:
        argsMap[#children] = arg;
    }
  }

  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(Row.new, newArgsList, argsMap);
}

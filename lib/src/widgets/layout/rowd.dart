import 'package:flutter/widgets.dart';

rowd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  final children = <Widget>[];

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
        // argsMap[#children] = arg;
        children.addAll(arg);
      case Widget arg:
        children.add(arg);
    }
  }

  // named args(origArgsMap) precede positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);

    // merge children
    final chMap = argsMap[#children] as List<Widget>?;
    if (chMap != null) {
      children.addAll(chMap);
    }
  }
  argsMap[#children] = children;

  return Function.apply(Row.new, [], argsMap);
}

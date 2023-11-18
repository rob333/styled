import 'package:flutter/material.dart';

flexd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  final List<Widget> widgets = [];

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Axis arg:
        argsMap[#direction] = arg;
      case List<Widget> arg:
        // argsMap[#children] = arg;
        widgets.addAll(arg);
      case Widget arg:
        widgets.add(arg);
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
      case Clip arg:
        argsMap[#clipBehavior] = arg;
    }
  }

  // named args(origArgsMap) precede positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);

    // merge widgets
    final list = argsMap[#children] as List<Widget>?;
    if (list != null) {
      widgets.addAll(list);
    }
  }

  argsMap[#children] = widgets;

  //* required:
  assert(() {
    if (argsMap[#direction] == null) {
      throw FlutterError("Flexd requires `direction:Axis`");
    }
    return true;
  }());

  return Function.apply(Flex.new, [], argsMap);
}

import 'package:flutter/material.dart';

customMultiChildLayoutd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  final List<Widget> widgets = [];

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case MultiChildLayoutDelegate arg:
        argsMap[#delegate] = arg;
      case List<Widget> arg:
        // argsMap[#children] = arg;
        widgets.addAll(arg);
      case Widget arg:
        widgets.add(arg);
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
    if (argsMap[#delegate] == null) {
      throw FlutterError(
          "CustomMultiChildLayoutd requires `delegate:MultiChildLayoutDelegate`");
    }
    return true;
  }());

  return Function.apply(CustomMultiChildLayout.new, [], argsMap);
}

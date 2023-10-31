import 'package:flutter/material.dart';

wrapd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int wrapi = 0;
  int doublei = 0;
  final List<Widget> widgets = [];

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case List<Widget> arg:
        // argsMap[#children] = arg;
        widgets.addAll(arg);
      case Widget arg:
        widgets.add(arg);
      case Axis arg:
        argsMap[#direction] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#spacing] = arg;
          case 1:
            argsMap[#runSpacing] = arg;
        }
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#spacing] = arg.toDouble();
          case 1:
            argsMap[#runSpacing] = arg.toDouble();
        }
      case WrapAlignment arg:
        switch (wrapi++) {
          case 0:
            argsMap[#alignment] = arg;
          case 1:
            argsMap[#runAlignment] = arg;
        }
      case WrapCrossAlignment arg:
        argsMap[#crossAxisAlignment] = arg;
      case TextDirection arg:
        argsMap[#textDirection] = arg;
      case VerticalDirection arg:
        argsMap[#verticalDirection] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  assert(() {
    if (argsMap[#children] == null) {
      throw FlutterError("Wrap without `children:Widget|List<Widgets>`");
    }
    return true;
  }());

  return Function.apply(Wrap.new, [], argsMap);
}

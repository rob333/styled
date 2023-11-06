import 'package:flutter/material.dart';

listWheelScrollViewd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int booli = 0;
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
      case ScrollController arg:
        argsMap[#controller] = arg;
      case ScrollPhysics arg:
        argsMap[#physics] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#itemExtent] = arg;
          case 1:
            argsMap[#diameterRatio] = arg;
          case 2:
            argsMap[#perspective] = arg;
          case 3:
            argsMap[#offAxisFraction] = arg;
          case 4:
            argsMap[#magnification] = arg;
          case 5:
            argsMap[#overAndUnderCenterOpacity] = arg;
          case 6:
            argsMap[#squeeze] = arg;
        }
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#itemExtent] = arg.toDouble();
          case 1:
            argsMap[#diameterRatio] = arg.toDouble();
          case 2:
            argsMap[#perspective] = arg.toDouble();
          case 3:
            argsMap[#offAxisFraction] = arg.toDouble();
          case 4:
            argsMap[#magnification] = arg.toDouble();
          case 5:
            argsMap[#overAndUnderCenterOpacity] = arg.toDouble();
          case 6:
            argsMap[#squeeze] = arg.toDouble();
        }
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#useMagnifier] = arg;
          case 1:
            argsMap[#renderChildrenOutsideViewport] = arg;
        }
      case void Function(int) arg:
        argsMap[#onSelectedItemChanged] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;
      case String arg:
        argsMap[#restorationId] = arg;
      case ScrollBehavior arg:
        argsMap[#scrollBehavior] = arg;
    }
  }

  argsMap[#children] = widgets;

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#children] == null || argsMap[#itemExtent]) {
      throw FlutterError("ListWheelScrollViewd requires `children:List<Widget>` and `itemExtent:double`");
    }
    return true;
  }());

  return Function.apply(ListWheelScrollView.new, [], argsMap);
}

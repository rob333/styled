import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

tabBard(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  int booli = 0;
  int edgeinseti = 0;
  int textstylei = 0;
  final List<Widget> tabs = [];

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case List<Widget> arg:
        // argsMap[#tabs] = arg;
        tabs.addAll(arg);
      case Widget arg:
        tabs.add(arg);
      case TabController arg:
        argsMap[#controller] = arg;
      case void Function(int) arg:
        argsMap[#onTap] = arg;
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#isScrollable] = arg;
          case 1:
            argsMap[#automaticIndicatorColorAdjustment] = arg;
          case 2:
            argsMap[#enableFeedback] = arg;
        }
      case EdgeInsetsGeometry arg:
        switch (edgeinseti++) {
          case 0:
            argsMap[#padding] = arg;
          case 1:
            argsMap[#indicatorPadding] = arg;
          case 2:
            argsMap[#labelPadding] = arg;
        }
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#indicatorColor] = arg;
          case 1:
            argsMap[#dividerColor] = arg;
          case 2:
            argsMap[#labelColor] = arg;
          case 3:
            argsMap[#unselectedLabelColor] = arg;
        }
      case double arg:
        argsMap[#indicatorWeight] = arg;
      case Decoration arg:
        argsMap[#indicator] = arg;
      case TabBarIndicatorSize arg:
        argsMap[#indicatorSize] = arg;
      case TextStyle arg:
        switch (textstylei++) {
          case 0:
            argsMap[#labelStyle] = arg;
          case 1:
            argsMap[#unselectedLabelStyle] = arg;
        }
      case DragStartBehavior arg:
        argsMap[#dragStartBehavior] = arg;
      case MaterialStateProperty<Color?> arg:
        argsMap[#overlayColor] = arg;
      case MouseCursor arg:
        argsMap[#mouseCursor] = arg;
      case ScrollPhysics arg:
        argsMap[#physics] = arg;
      case InteractiveInkFeatureFactory arg:
        argsMap[#splashFactory] = arg;
      case BorderRadius arg:
        argsMap[#splashBorderRadius] = arg;
      case TabAlignment arg:
        argsMap[#tabAlignment] = arg;
    }
  }

  // named args(origArgsMap) precede positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);

    // merge tabs
    final list = argsMap[#tabs] as List<Widget>?;
    if (list != null) {
      tabs.addAll(list);
    }
  }

  argsMap[#tabs] = tabs;

  //* required:
  assert(() {
    if (argsMap[#tabs] == null) {
      throw FlutterError("TabBard requires `tabs:List<Widget>`");
    }
    return true;
  }());

  return Function.apply(TabBar.new, [], argsMap);
}

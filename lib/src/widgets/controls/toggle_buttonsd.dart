import 'package:flutter/material.dart';

toggleButtonsd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  final List<Widget> widgets = [];
  final List<FocusNode> focusnodes = [];

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case List<Widget> arg:
        // argsMap[#children] = arg;
        widgets.addAll(arg);
      case Widget arg:
        widgets.add(arg);
      case List<bool> arg:
        argsMap[#isSelected] = arg;
      case void Function(int) arg:
        argsMap[#onPressed] = arg;
      case MouseCursor arg:
        argsMap[#mouseCursor] = arg;
      case MaterialTapTargetSize arg:
        argsMap[#tapTargetSize] = arg;
      case TextStyle arg:
        argsMap[#textStyle] = arg;
      case BoxConstraints arg:
        argsMap[#constraints] = arg;
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#color] = arg;
          case 1:
            argsMap[#selectedColor] = arg;
          case 2:
            argsMap[#disabledColor] = arg;
          case 3:
            argsMap[#fillColor] = arg;
          case 4:
            argsMap[#focusColor] = arg;
          case 5:
            argsMap[#highlightColor] = arg;
          case 6:
            argsMap[#hoverColor] = arg;
          case 7:
            argsMap[#splashColor] = arg;
          case 8:
            argsMap[#borderColor] = arg;
          case 9:
            argsMap[#selectedBorderColor] = arg;
          case 10:
            argsMap[#disabledBorderColor] = arg;
        }
      case List<FocusNode> arg:
        // argsMap[#focusNodes] = arg;
        focusnodes.addAll(arg);
      case FocusNode arg:
        focusnodes.add(arg);
      case bool arg:
        argsMap[#renderBorder] = arg;
      case BorderRadius arg:
        argsMap[#borderRadius] = arg;
      case double arg:
        argsMap[#borderWidth] = arg;
      case Axis arg:
        argsMap[#direction] = arg;
      case VerticalDirection arg:
        argsMap[#verticalDirection] = arg;
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

    final map2 = argsMap[#focusNodes] as List<FocusNode>?;
    if (map2 != null) {
      focusnodes.addAll(map2);
    }
  }

  argsMap[#children] = widgets;
  argsMap[#focusNodes] = focusnodes;

  //* required:
  assert(() {
    if (argsMap[#children] == null || argsMap[#isSelected] == null) {
      throw FlutterError(
          "ToggleButtonsd requires `children:Widget` and `isSelected:bool");
    }
    return true;
  }());

  return Function.apply(ToggleButtons.new, [], argsMap);
}

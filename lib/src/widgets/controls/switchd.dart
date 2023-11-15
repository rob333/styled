import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

switchd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  int imageprovideri = 0;
  int functionstacktracei = 0;
  int materialstatepropertycolori = 0;
  int functionbooli = 0;
  int booli = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case bool arg:
        switch (booli++) {
          case 0:
            argsMap[#value] = arg;
          case 1:
            argsMap[#autofocus] = arg;
        }
      case void Function(bool) arg:
        switch (functionbooli++) {
          case 0:
            argsMap[#onChanged] = arg;
          case 1:
            argsMap[#onFocusChange] = arg;
        }
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#activeColor] = arg;
          case 1:
            argsMap[#focusColor] = arg;
          case 2:
            argsMap[#hoverColor] = arg;
          case 3:
            argsMap[#activeTrackColor] = arg;
          case 4:
            argsMap[#inactiveTrackColor] = arg;
          case 5:
            argsMap[#inactiveThumbColor] = arg;
        }
      case ImageProvider<Object> arg:
        switch (imageprovideri++) {
          case 0:
            argsMap[#activeThumbImage] = arg;
          case 1:
            argsMap[#inactiveThumbImage] = arg;
        }
      case void Function(Object, StackTrace?) arg:
        switch (functionstacktracei++) {
          case 0:
            argsMap[#onActiveThumbImageError] = arg;
          case 1:
            argsMap[#onInactiveThumbImageError] = arg;
        }
      case MaterialStateProperty<Color?> arg:
        switch (materialstatepropertycolori++) {
          case 0:
            argsMap[#thumbColor] = arg;
          case 1:
            argsMap[#trackColor] = arg;
          case 2:
            argsMap[#trackOutlineColor] = arg;
          case 3:
            argsMap[#overlayColor] = arg;
        }
      case MaterialStateProperty<double?> arg:
        argsMap[#trackOutlineWidth] = arg;
      case MaterialStateProperty<Icon?> arg:
        argsMap[#thumbIcon] = arg;
      case MaterialTapTargetSize arg:
        argsMap[#materialTapTargetSize] = arg;
      case DragStartBehavior arg:
        argsMap[#dragStartBehavior] = arg;
      case MouseCursor arg:
        argsMap[#mouseCursor] = arg;
      case double arg:
        argsMap[#splashRadius] = arg;
      case int arg:
        argsMap[#splashRadius] = arg.toDouble();
      case FocusNode arg:
        argsMap[#focusNode] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#value] == null) {
      throw FlutterError("Switchd requires `value:bool` and 'onChanged:void Function(bool)`");
    }
    return true;
  }());

  return Function.apply(Switch.new, [], argsMap);
}

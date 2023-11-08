import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

switchListTiled(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  int booli = 0;
  int functioni = 0;
  int functionbooli = 0;
  int materialstatepropertyi = 0;
  int imageprovideri = 0;
  int widgeti = 0;

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
          case 2:
            argsMap[#isThreeLine] = arg;
          case 3:
            argsMap[#dense] = arg;
          case 4:
            argsMap[#selected] = arg;
          case 5:
            argsMap[#enableFeedback] = arg;
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
            argsMap[#activeTrackColor] = arg;
          case 2:
            argsMap[#inactiveThumbColor] = arg;
          case 3:
            argsMap[#inactiveTrackColor] = arg;
          case 4:
            argsMap[#tileColor] = arg;
          case 5:
            argsMap[#selectedTileColor] = arg;
          case 6:
            argsMap[#hoverColor] = arg;
        }
      case ImageProvider<Object> arg:
        switch (imageprovideri++) {
          case 0:
            argsMap[#activeThumbImage] = arg;
          case 1:
            argsMap[#inactiveThumbImage] = arg;
        }
      case void Function(Object, StackTrace?) arg:
        switch (functioni++) {
          case 0:
            argsMap[#onActiveThumbImageError] = arg;
          case 1:
            argsMap[#onInactiveThumbImageError] = arg;
        }
      case MaterialStateProperty<Color?> arg:
        switch (materialstatepropertyi++) {
          case 0:
            argsMap[#thumbColor] = arg;
          case 1:
            argsMap[#trackColor] = arg;
          case 2:
            argsMap[#trackOutlineColor] = arg;
          case 3:
            argsMap[#overlayColor] = arg;
        }
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
      case FocusNode arg:
        argsMap[#focusNode] = arg;
      case Widget arg:
        switch (widgeti++) {
          case 0:
            argsMap[#title] = arg;
          case 1:
            argsMap[#subtitle] = arg;
          case 2:
            argsMap[#secondary] = arg;
        }
      case EdgeInsetsGeometry arg:
        argsMap[#contentPadding] = arg;
      case ListTileControlAffinity arg:
        argsMap[#controlAffinity] = arg;
      case ShapeBorder arg:
        argsMap[#shape] = arg;
      case VisualDensity arg:
        argsMap[#visualDensity] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#value] == null || argsMap[#onChange] == null) {
      throw FlutterError("SwitchListTiled requires `value:bool` and `onChange:void Function(bool)`");
    }
    return true;
  }());

  return Function.apply(SwitchListTile.new, [], argsMap);
}

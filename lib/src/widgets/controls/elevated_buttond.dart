import 'package:flutter/material.dart';

elevatedButtond(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  final List<Widget> widgets = [];
  int fni = 0;
  int fnbooli = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case void Function() arg:
        switch (fni++) {
          case 0:
            argsMap[#onPressed] = arg;
          case 1:
            argsMap[#onLongPress] = arg;
        }
      case void Function(bool) arg:
        switch (fnbooli++) {
          case 0:
            argsMap[#onHover] = arg;
          case 1:
            argsMap[#onFocusChange] = arg;
        }
      case ButtonStyle arg:
        argsMap[#style] = arg;
      case FocusNode arg:
        argsMap[#focusNode] = arg;
      case bool arg:
        argsMap[#autofocus] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;
      case MaterialStatesController arg:
        argsMap[#statesController] = arg;
      case Widget arg:
        // argsMap[#child] = arg;
        widgets.add(arg);
      // #icon, #label for `ElevatedButton.icon`
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  if (widgets.length == 1) {
    argsMap[#child] ??= widgets[0];
  } else if (widgets.length == 2) {
    argsMap[#icon] ??= widgets[0];
    argsMap[#label] ??= widgets[1];
  }

  final fn = argsMap[#child] != null
      ? ElevatedButton.new
      : argsMap[#icon] != null && argsMap[#label] != null
          ? ElevatedButton.icon
          : null;

  assert(
    () {
      if (fn == null) {
        throw FlutterError(
            "ElevatedButtond: neither `child` nor `icon`,`label` of type Widget specified.");
      }
      if (argsMap[#onPressed] == null) {
        throw FlutterError("ElevatedButtond: no `onPressed` specified.");
      }
      return true;
    }(),
  );

  return Function.apply(fn!, [], argsMap);
}

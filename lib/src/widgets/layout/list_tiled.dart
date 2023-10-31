import 'package:flutter/material.dart';

listTiled(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int widgeti = 0;
  int fni = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        switch (widgeti++) {
          case 0:
            argsMap[#title] = arg;
          case 1:
            argsMap[#leading] = arg;
          case 2:
            argsMap[#subtitle] = arg;
          case 3:
            argsMap[#trailing] = arg;
        }
      case VisualDensity arg:
        argsMap[#visualDensity] = arg;
      case ShapeBorder arg:
        argsMap[#shape] = arg;
      case ListTileStyle arg:
        argsMap[#style] = arg;
      case EdgeInsetsGeometry arg:
        argsMap[#contentPadding] = arg;
      case void Function() arg:
        switch (fni++) {
          case 0:
            argsMap[#onTap] = arg;
          case 1:
            argsMap[#onLongPress] = arg;
        }
      case void Function(bool) arg:
        argsMap[#onFocusChange] = arg;
      case MouseCursor arg:
        argsMap[#mouseCursor] = arg;
      case FocusNode arg:
        argsMap[#focusNode] = arg;
      case ListTileTitleAlignment arg:
        argsMap[#titleAlignment] = arg;
      // case Color arg:
      //   argsMap[#selectedColor] = arg;
      // case Color arg:
      //   argsMap[#iconColor] = arg;
      // case Color arg:
      //   argsMap[#textColor] = arg;
      // case TextStyle arg:
      //   argsMap[#titleTextStyle] = arg;
      // case TextStyle arg:
      //   argsMap[#subtitleTextStyle] = arg;
      // case TextStyle arg:
      //   argsMap[#leadingAndTrailingTextStyle] = arg;
      // case Color arg:
      //   argsMap[#focusColor] = arg;
      // case Color arg:
      //   argsMap[#hoverColor] = arg;
      // case Color arg:
      //   argsMap[#splashColor] = arg;
      // case Color arg:
      //   argsMap[#tileColor] = arg;
      // case Color arg:
      //   argsMap[#selectedTileColor] = arg;
      // case bool arg:
      //   argsMap[#isThreeLine] = arg;
      // case bool arg:
      //   argsMap[#dense] = arg;
      // case bool arg:
      //   argsMap[#enabled] = arg;
      // case bool arg:
      //   argsMap[#selected] = arg;
      // case bool arg:
      //   argsMap[#autofocus] = arg;
      // case bool arg:
      //   argsMap[#enableFeedback] = arg;
      // case double arg:
      //   argsMap[#horizontalTitleGap] = arg;
      // case double arg:
      //   argsMap[#minVerticalPadding] = arg;
      // case double arg:
      //   argsMap[#minLeadingWidth] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(ListTile.new, [], argsMap);
}

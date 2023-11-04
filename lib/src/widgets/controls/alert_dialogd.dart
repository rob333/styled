import 'package:flutter/material.dart';

alertDialogd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  int doublei = 0;
  int widgeti = 0;
  int textstylei = 0;
  int edteinsetgeometryi = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;

      case Widget arg:
        switch (widgeti++) {
          case 0:
            argsMap[#icon] = arg;
          case 1:
            argsMap[#title] = arg;
          case 2:
            argsMap[#content] = arg;
        }
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#iconColor] = arg;
          case 1:
            argsMap[#backgroundColor] = arg;
          case 2:
            argsMap[#shadowColor] = arg;
          case 3:
            argsMap[#surfaceTintColor] = arg;
        }

      case EdgeInsets arg:
        argsMap[#insetPadding] = arg;

      case EdgeInsetsGeometry arg:
        switch (edteinsetgeometryi++) {
          case 0:
            argsMap[#iconPadding] = arg;
          case 1:
            argsMap[#titlePadding] = arg;
          case 2:
            argsMap[#contentPadding] = arg;
          case 3:
            argsMap[#actionsPadding] = arg;
          case 4:
            argsMap[#buttonPadding] = arg;
        }
      case TextStyle arg:
        switch (textstylei++) {
          case 0:
            argsMap[#titleTextStyle] = arg;
          case 1:
            argsMap[#contentTextStyle] = arg;
        }
      case List<Widget> arg:
        argsMap[#actions] = arg;
      case MainAxisAlignment arg:
        argsMap[#actionsAlignment] = arg;
      case OverflowBarAlignment arg:
        argsMap[#actionsOverflowAlignment] = arg;
      case VerticalDirection arg:
        argsMap[#actionsOverflowDirection] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#elevation] = arg;
          case 1:
            argsMap[#actionsOverflowButtonSpacing] = arg;
        }

      case String arg:
        argsMap[#semanticLabel] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;
      case ShapeBorder arg:
        argsMap[#shape] = arg;
      case AlignmentGeometry arg:
        argsMap[#alignment] = arg;
      case bool arg:
        argsMap[#scrollable] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(AlertDialog.new, [], argsMap);
}

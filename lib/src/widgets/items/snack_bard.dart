import 'package:flutter/material.dart';

snackBard(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  int doublei = 0;
  int edgeinseti = 0;
  int snackbarbehaviori = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case Widget arg:
        argsMap[#content] = arg;
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#backgroundColor] = arg;
          case 1:
            argsMap[#closeIconColor] = arg;
        }
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#elevation] = arg;
          case 1:
            argsMap[#width] = arg;
          case 2:
            argsMap[#actionOverflowThreshold] = arg;
        }
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#elevation] = arg.toDouble();
          case 1:
            argsMap[#width] = arg.toDouble();
          case 2:
            argsMap[#actionOverflowThreshold] = arg.toDouble();
        }

      case EdgeInsetsGeometry arg:
        switch (edgeinseti++) {
          case 0:
            argsMap[#margin] = arg;
          case 1:
            argsMap[#padding] = arg;
        }

      case ShapeBorder arg:
        argsMap[#shape] = arg;
      case SnackBarBehavior arg:
        switch (snackbarbehaviori++) {
          case 0:
            argsMap[#behavior] = arg;
          case 1:
            argsMap[#action] = arg;
        }
      case bool arg:
        argsMap[#showCloseIcon] = arg;
      case Duration arg:
        argsMap[#duration] = arg;
      case Animation<double> arg:
        argsMap[#animation] = arg;
      case void Function() arg:
        argsMap[#onVisible] = arg;
      case DismissDirection arg:
        argsMap[#dismissDirection] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  //* required:
  assert(() {
    if (argsMap[#content] == null) {
      throw FlutterError("SnackBard requires `content:Widget`");
    }
    return true;
  }());

  return Function.apply(SnackBar.new, [], argsMap);
}

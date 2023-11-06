import 'package:flutter/material.dart';

circularProgressIndicatord(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int colori = 0;
  int doublei = 0;
  int stringi = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#value] = arg;
          case 1:
            argsMap[#strokeWidth] = arg;
          case 2:
            argsMap[#strokeAlign] = arg;
        }
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#value] = arg.toDouble();
          case 1:
            argsMap[#strokeWidth] = arg.toDouble();
          case 2:
            argsMap[#strokeAlign] = arg.toDouble();
        }
      case Color arg:
        switch (colori++) {
          case 0:
            argsMap[#backgroundColor] = arg;
          case 1:
            argsMap[#color] = arg;
        }
      case Animation<Color?> arg:
        argsMap[#valueColor] = arg;
      case String arg:
        switch (stringi++) {
          case 0:
            argsMap[#semanticsLabel] = arg;
          case 1:
            argsMap[#semanticsValue] = arg;
        }
      case StrokeCap arg:
        argsMap[#strokeCap] = arg;
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(CircularProgressIndicator.new, [], argsMap);
}

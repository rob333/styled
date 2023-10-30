import 'package:flutter/material.dart';

boxShadowd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int doublei = 0;

  for (final arg in argsList) {
    switch (arg) {
      case Color arg:
        argsMap[#color] = arg;
      case Offset arg:
        argsMap[#offset] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#blurRadius] = arg;
          case 1:
            argsMap[#spreadRadius] = arg;
        }
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#blurRadius] = arg.toDouble();
          case 1:
            argsMap[#spreadRadius] = arg.toDouble();
        }
      case BlurStyle arg:
        argsMap[#blurStyle] = arg;
    }
  }

  // named args(origArgsMap) precede positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(BoxShadow.new, [], argsMap);
}

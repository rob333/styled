import 'package:flutter/material.dart';

borderd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int doublei = 0;
  final borderSides = <BorderSide>[];

  for (final arg in argsList) {
    switch (arg) {
      case BorderSide arg:
        borderSides.add(arg);
      case Color arg:
        argsMap[#color] = arg;
      case double arg:
        switch (doublei++) {
          case 0:
            argsMap[#width] = arg;
          case 1:
            argsMap[#strokeAlign] = arg;
        }
      case int arg:
        switch (doublei++) {
          case 0:
            argsMap[#width] = arg.toDouble();
          case 1:
            argsMap[#strokeAlign] = arg.toDouble();
        }
      case BorderStyle arg:
        argsMap[#style] = arg;
    }
  }

  // named args(origArgsMap) precede positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  switch (borderSides.length) {
    case 0:
      return Function.apply(Border.all, [], argsMap);
    case 1:
      return Function.apply(Border.fromBorderSide, borderSides, {});
    case 2:
      return Function.apply(Border.symmetric, borderSides, {});
    case 4:
      return Function.apply(Border.new, [], {
        #top: borderSides[0],
        #right: borderSides[1],
        #bottom: borderSides[2],
        #left: borderSides[3],
      });
    default:
      return Function.apply(Border.symmetric, borderSides, {});
  }
}

import 'package:flutter/material.dart';

borderSided(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  int doublei = 0;

  for (final arg in argsList) {
    switch (arg) {
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

  return Function.apply(BorderSide.new, [], argsMap);
}

import 'package:flutter/material.dart';

popupMenuDividerd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case double arg:
        argsMap[#height] = arg;
      case int arg:
        argsMap[#height] = arg.toDouble();
    }
  }

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(PopupMenuDivider.new, [], argsMap);
}

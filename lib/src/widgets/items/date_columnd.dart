import 'package:flutter/material.dart';

dataColumnd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  final List<DataCell> cells = [];

  for (final arg in argsList) {
    switch (arg) {
      case Widget arg:
        argsMap[#label] = arg;
      case String arg:
        argsMap[#tooltip] = arg;
      case bool arg:
        argsMap[#numeric] = arg;
      case void Function(int, bool) arg:
        argsMap[#onSort] = arg;
      case MaterialStateProperty<MouseCursor?> arg:
        argsMap[#mouseCursor] = arg;
    }
  }

  argsMap[#cells] = cells;

  // named args(origArgsMap) precedes positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);
  }

  return Function.apply(DataColumn.new, [], argsMap);
}

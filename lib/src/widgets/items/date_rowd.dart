import 'package:flutter/material.dart';

dataRowd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  final List<DataCell> cells = [];

  for (final arg in argsList) {
    switch (arg) {
      case LocalKey arg:
        argsMap[#key] = arg;
      case bool arg:
        argsMap[#selected] = arg;
      case List<DataCell> arg:
        // argsMap[#cells] = arg;
        cells.addAll(arg);
      case DataCell arg:
        cells.add(arg);
      case void Function(bool?) arg:
        argsMap[#onSelectChanged] = arg;
      case void Function() arg:
        argsMap[#onLongPress] = arg;
      case MaterialStateProperty<Color?> arg:
        argsMap[#color] = arg;
      case MaterialStateProperty<MouseCursor?> arg:
        argsMap[#mouseCursor] = arg;
    }
  }

  // named args(origArgsMap) precede positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);

    // merge cells
    final list = argsMap[#cells] as List<DataCell>?;
    if (list != null) {
      cells.addAll(list);
    }
  }

  argsMap[#cells] = cells;

  return Function.apply(DataRow.new, [], argsMap);
}

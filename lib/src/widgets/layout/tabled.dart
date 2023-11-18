import 'package:flutter/material.dart';

tabled(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  final List<TableRow> rows = [];

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case List<TableRow> arg:
        // argsMap[#children] = arg;
        rows.addAll(arg);
      case TableRow arg:
        rows.add(arg);
      case Map<int, TableColumnWidth> arg:
        argsMap[#columnWidths] = arg;
      case TableColumnWidth arg:
        argsMap[#defaultColumnWidth] = arg;
      case TextDirection arg:
        argsMap[#textDirection] = arg;
      case TableBorder arg:
        argsMap[#border] = arg;
      case TableCellVerticalAlignment arg:
        argsMap[#defaultVerticalAlignment] = arg;
      case TextBaseline arg:
        argsMap[#textBaseline] = arg;
    }
  }

  // named args(origArgsMap) precede positional ones
  if (origArgsMap.isNotEmpty) {
    argsMap.addAll(origArgsMap);

    // merge widgets
    final list = argsMap[#children] as List<TableRow>?;
    if (list != null) {
      rows.addAll(list);
    }
  }

  argsMap[#children] = rows;

  return Function.apply(Table.new, [], argsMap);
}

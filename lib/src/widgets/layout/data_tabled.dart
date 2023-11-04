import 'package:flutter/material.dart';
import 'containerd.dart' show mergeDecoration;

dataTabled(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  final List<DataColumn> columns = [];
  final List<DataRow> rows = [];

  //* mixin `Decoration`
  final decoMap = <Symbol, dynamic>{};
  Decoration? decoInList; //, decoInMap;
  final List<BoxShadow> boxShadow = []; // for Decoration

  for (final arg in argsList) {
    switch (arg) {
      case Key arg:
        argsMap[#key] = arg;
      case List<DataColumn> arg:
        // argsMap[#columns] = arg;
        columns.addAll(arg);
      case DataColumn arg:
        columns.add(arg);
      case List<DataRow> arg:
        // argsMap[#rows] = arg;
        rows.addAll(arg);
      case DataRow arg:
        rows.add(arg);
      case bool arg:
        argsMap[#sortAscending] = arg;
      case Decoration arg:
        argsMap[#decoration] = arg;
      case TableBorder arg:
        argsMap[#border] = arg;
      case Clip arg:
        argsMap[#clipBehavior] = arg;
      case int arg:
        argsMap[#sortColumnIndex] = arg;
      case void Function(bool?) arg:
        argsMap[#onSelectAll] = arg;

      // MaterialStateProperty<Color?>? dataRowColor,
      // MaterialStateProperty<Color?>? headingRowColor,
      // double? dataRowHeight,
      // double? dataRowMinHeight,
      // double? dataRowMaxHeight,
      // TextStyle? dataTextStyle,
      // TextStyle? headingTextStyle,
      // double? headingRowHeight,
      // double? horizontalMargin,
      // double? columnSpacing,
      // bool showCheckboxColumn = true,
      // bool showBottomBorder = false,
      // double? dividerThickness,
      // double? checkboxHorizontalMargin,

      //* mixin `Decoration`
      case Color arg:
        decoMap[#color] = arg;
      case DecorationImage arg:
        decoMap[#image] = arg;
      case BoxBorder arg:
        decoMap[#border] = arg;
      case BorderRadiusGeometry arg:
        decoMap[#borderRadius] = arg;
      case List<BoxShadow> arg:
        // decoMap[#boxShadow] = arg;
        boxShadow.addAll(arg);
      case BoxShadow arg:
        boxShadow.add(arg);
      case Gradient arg:
        decoMap[#gradient] = arg;
      case BlendMode arg:
        decoMap[#backgroundBlendMode] = arg;
      case BoxShape arg:
        decoMap[#shape] = arg;
    }
  }

  argsMap[#columns] = columns;
  argsMap[#rows] = rows;

  mergeDecoration(argsMap, origArgsMap, decoMap, decoInList, boxShadow, null);

  //* required:
  assert(() {
    if (argsMap[#columns] == null || argsMap[#rows] == null) {
      throw FlutterError("DataTabled requires `columns:List<DataColumn>` and `rows:List<DataRow>`");
    }
    return true;
  }());

  return Function.apply(DataTable.new, [], argsMap);
}

import 'package:flutter/material.dart';
import '../layout/containerd.dart' show mergeDecoration;

tableRowd(List argsList, Map<Symbol, dynamic> origArgsMap) {
  final argsMap = <Symbol, dynamic>{};
  final List<Widget> widgets = [];

  //* mixin `Decoration`
  final decoMap = <Symbol, dynamic>{};
  Decoration? decoInList; // , decoInMap;
  final List<BoxShadow> boxShadow = []; // for Decoration

  for (final arg in argsList) {
    switch (arg) {
      case LocalKey arg:
        argsMap[#key] = arg;
      case List<Widget> arg:
        // argsMap[#children] = arg;
        widgets.addAll(arg);
      case Widget arg:
        widgets.add(arg);
      case Decoration arg:
        // argsMap[#decoration] = arg;
        decoInList = arg;

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

  //* handle children:Widget
  argsMap[#children] = widgets;

  mergeDecoration(argsMap, origArgsMap, decoMap, decoInList, boxShadow, null);

  //* handled in `mergeDecoration`
  // // named args(origArgsMap) precedes positional ones
  // if (origArgsMap.isNotEmpty) {
  //   argsMap.addAll(origArgsMap);
  // }

  return Function.apply(TableRow.new, [], argsMap);
}
